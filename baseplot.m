function[] = baseplot()
hold on
beam = (1:10);
height = zeros(1,10);
subplot(3,1,1)
plot(beam,height,'linewidth',10)
xlim([1,10]);
ylim([-5,5]);
set(gca,'XTick',[], 'YTick', []) % hides the numbers to make it look like a beam
end