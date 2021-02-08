function [mse,R,p,rg] = EstimationErrorPlot(prediction,target)

    mse = mean((target-prediction).^2);
    plot(target,prediction,'r*')
    hold on
    xlabel('True Value')
    ylabel('Mean Predicted Value')
    rg = [min([prediction;target]),max([prediction;target])];
    plot(rg,rg,'k--')
    [R,p] = corr(target, prediction);
    title(sprintf('R=%.3f,p=%.3g,mse=%.3f',R,p,mse));
    legend('True vs Predicted','Diagonal');
    
end


load fisheriris
D_train = meas(1:2:end,:);
D_test = meas(2:2:end,:);
mdl = fitlm(D_train(:,1:3),D_train(:,4));
prediction = predict(mdl,D_test(:,1:3));
[mse,R,p,rg] = EstimationErrorPlot(prediction,D_test(:,4));
