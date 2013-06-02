ai = analoginput('winsound');
addchannel(ai, 1);

ai.SampleRate = 8000;
ai.SamplesPerTrigger = 40000;
% 40000 / 8000 = 5 sn

ai.TriggerType = 'Immediate';

start(ai)
[d,t] = getdata(ai);
plot(t,d);
zoom on