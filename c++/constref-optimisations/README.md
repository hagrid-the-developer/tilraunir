Passing parameters by const reference
======================================

If parameter is passed by reference:

    void scale(std::vector<double>& v, const double& x) {
	    for (size_t i = 0; i != v.size(); ++i)
		    v[i] /= x;
    }

then compiler will load `x` in every loop iteration even if reference is `const`. Since value will be in L1-cache, it should be very close to value stored in register (for x86 platform), but still, it can be slower.

If paramter `x` is passed by value, then it is stored in register (for built-in parameters):

    void scale2(std::vector<double>& v, const double x) {
	    for (size_t i = 0; i != v.size(); ++i)
		    v[i] /= x;
    }

I compiled `main.cxx` under Ubuntu 17.10 with GCC 7.2.0 and I obtained disassembled output:

    $ g++ -O2 -std=c++14 -c main.cxx
    $ objdump -dCIR main.o >main-O2.S
    
`main-O2.S` contains output for `-O2` and `main-Ofast.S` for `-Ofast`. The code for `-Ofast` looks really strange, I am not sure whether it is a good idea to use it.

Assembler for `-O2`:

    0000000000000000 <scale(std::vector<double, std::allocator<double> >&, double const&)>:
    # Pointer to vector is in %rdi, pointer to double is in %rsi
    # Get begin and end from the vector. It seems that vector is implemented as two pointers, not as a pointer and a size.
       0:	48 8b 07             	mov    (%rdi),%rax
       3:	48 8b 57 08          	mov    0x8(%rdi),%rdx
    # Calculate size of the vector
       7:	48 29 c2             	sub    %rax,%rdx
       a:	48 89 d1             	mov    %rdx,%rcx
    # Divide the size by 8 and store the result to %rcx
       d:	48 c1 f9 03          	sar    $0x3,%rcx
    # Test if %rcx (size/8) is zero and jump to the end if it is
      11:	48 85 c9             	test   %rcx,%rcx
      14:	74 20                	je     36 <scale(std::vector<double, std::allocator<double> >&, double const&)+0x36>
    # Store end to %rdx again
      16:	48 01 c2             	add    %rax,%rdx
      19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    # The loop
      20:	f2 0f 10 00          	movsd  (%rax),%xmm0
      24:	48 83 c0 08          	add    $0x8,%rax
    # ... The const double& is loaded from memory, %xmm0 contains the value of the array item
      28:	f2 0f 5e 06          	divsd  (%rsi),%xmm0
    # ... Store the array item back, %rax now contains the address of the next item.
      2c:	f2 0f 11 40 f8       	movsd  %xmm0,-0x8(%rax)
    # Repeat the loop if %rax != end
      31:	48 39 d0             	cmp    %rdx,%rax
      34:	75 ea                	jne    20 <scale(std::vector<double, std::allocator<double> >&, double const&)+0x20>
      36:	f3 c3                	repz retq 
      38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
      3f:	00 
    
    # This function is similar, but the value is taken from register %xmm0 that contains the first function parameter.
    0000000000000040 <scale2(std::vector<double, std::allocator<double> >&, double)>:
      40:	48 8b 07             	mov    (%rdi),%rax
      43:	48 8b 57 08          	mov    0x8(%rdi),%rdx
      47:	48 29 c2             	sub    %rax,%rdx
      4a:	48 89 d1             	mov    %rdx,%rcx
      4d:	48 c1 f9 03          	sar    $0x3,%rcx
      51:	48 85 c9             	test   %rcx,%rcx
      54:	74 20                	je     76 <scale2(std::vector<double, std::allocator<double> >&, double)+0x36>
      56:	48 01 c2             	add    %rax,%rdx
      59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
      60:	f2 0f 10 08          	movsd  (%rax),%xmm1
      64:	48 83 c0 08          	add    $0x8,%rax
      68:	f2 0f 5e c8          	divsd  %xmm0,%xmm1
      6c:	f2 0f 11 48 f8       	movsd  %xmm1,-0x8(%rax)
      71:	48 39 c2             	cmp    %rax,%rdx
      74:	75 ea                	jne    60 <scale2(std::vector<double, std::allocator<double> >&, double)+0x20>
      76:	f3 c3                	repz retq **for**
