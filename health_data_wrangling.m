t = load('data.mat');
time=0;pr=0;spo2=0;rr=0;

for i=1:53
    recordings(i) = t.data(i).ref.params;
    time = cat(1,time,recordings(i).spo2.t);
    spo2 = cat(1,spo2,recordings(i).spo2.v);
    pr = cat(1,pr,recordings(i).pr.v);
    rr = cat(1,rr,recordings(i).rr.v);
end

t1 = datetime(2020,2,26,8,0,0);
t2 = datetime(2020,4,18,8,0,0);
t = (t1:hours(1):t2).';

health_data  = [time, spo2, pr, rr];
health_data = fillmissing(health_data, 'previous');
oL = length(health_data_d);
health_data = interp1(1:oL, health_data_d, linspace(1,oL,1249));
health_data(:,1) = [];

health_data = table(t,health_data(:,1),health_data(:,2), health_data(:,3),'VariableNames',{'Date','SPO2','Pulse rate','Respiratory rate'});




