% 生成模拟数据（可以替换为实际数据）
X = linspace(0.1, 10, 50);   % 频率
true_params = [50, 0.02, 1, 0.05]; % 真实参数
Y = true_params(1) .* exp(-true_params(2) .* X.^2) ./ sqrt(true_params(3) + true_params(4) .* X.^2);
Y = Y + randn(size(Y)) * 2;  % 加入少量噪声

% 拟合曲线
[param_fit, Y_fit] = fit_csf_normalized(X, Y);

% 绘图
figure;
plot(X, Y, 'bo', 'DisplayName', '原始数据'); hold on;
plot(X, Y_fit, 'r-', 'LineWidth', 2, 'DisplayName', '拟合曲线');
legend;
xlabel('X'); ylabel('Y');
title('CSF 形式的单峰曲线拟合');
grid on;