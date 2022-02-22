clear;
matrix1 = [28,37;0,85];
matrix2 = [23,50;6,74];
matrix3 = [65,0;49,36];
matrix4 = [67,6;37,43];
matrix5 = [49,16;4,81];
matrix6 = [46,27;10,70];
matrix7 = [55,10;9,76];
matrix8 = [51,22;8,72];

matrixinsample = {[matrix1],[matrix3],[matrix5],[matrix7]};
matrixoutsample = {[matrix2],[matrix4],[matrix6],[matrix8]};

for i = 1:length(matrixinsample)
    Specin(i) = matrixinsample{i}(1)/(matrixinsample{i}(1)+matrixinsample{i}(3));
    Sensin(i) = matrixinsample{i}(4)/(matrixinsample{i}(4)+matrixinsample{i}(2));
end

for i = 1:length(matrixoutsample)
    Specout(i) = matrixoutsample{i}(1)/(matrixoutsample{i}(1)+matrixoutsample{i}(3));
    Sensout(i) = matrixoutsample{i}(4)/(matrixoutsample{i}(4)+matrixoutsample{i}(2));
end


figure()
hold on
scatter(Sensout, Specout,'filled')
scatter(Sensin, Specin, 'filled')
legend("Out-Of-Sample", "In-Sample")
xlabel("Sensitivity")
ylabel("Specificity")
title("640533325 - Scatter Plot of Sensitvity vs Specificity")

hold off