AO = analogoutput('winsound');
chan = addchannel(AO,[1 2]);

set(AO,'SampleRate',10000)
set(AO,'TriggerType','Manual')
data = wavread('deneme.wav');

plot(data)
putdata(AO,data)

start(AO)
trigger(AO)

wait(AO, 8)

delete(AO)
clear AO