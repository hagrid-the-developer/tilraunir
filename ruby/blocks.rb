def a_method(&block)
  block.call()
end

# main
a_method { "x" }

a_proc = Proc.new { "x" }
a_method(&a_proc)
