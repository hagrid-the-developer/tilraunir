SinOsc s1 => Gain mix => WvOut out => dac;

0.1 => mix.gain;
"mixed.wav" => out.wavFilename;

SinOsc s2 => mix;
SinOsc s3 => mix;
SinOsc s4 => mix;
SinOsc s5 => mix;

23 => s1.freq;
36 => s2.freq;
230 => s3.freq;
900 => s4.freq;
2300 => s5.freq;

20::second => now;
