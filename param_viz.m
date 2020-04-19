figure(1)
for i= 1:5
    subplot(5,1,i)
    bar(data(i).ref.params.spo2.t,data(i).ref.params.spo2.v,'b')
    ylim([90 100]);
    xlabel('Time in seconds');
    ylabel('SPO2 value in %');
    title(sprintf('Recording %d',i));
end

figure(2)
for i= 1:5
    subplot(5,1,i)
    bar(data(i).ref.params.pr.t,data(i).ref.params.pr.v,'b')
    xlabel('Time in seconds');
    ylabel('Pulse rate in bpm');
    title(sprintf('Recording %d',i));
end

figure(3)
for i= 1:5
    subplot(5,1,i)
    bar(data(i).ref.params.rr.t,data(i).ref.params.rr.v,'b')
    xlabel('Time in seconds');
    ylabel('Breath rate in brpm');
    title(sprintf('Recording %d',i));
end