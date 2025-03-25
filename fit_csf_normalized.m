function [fit_params, Y_fit] = fit_csf_normalized(X, Y)
    % 拟合 Barten CSF 形式的单峰不对称曲线 (Y 归一化)
    % X: 自变量（如空间频率）
    % Y: 归一化因变量（范围 0 到 1）
    % fit_params: 拟合参数 [B, C, D]
    % Y_fit: 计算出的拟合曲线

    % 归一化初始参数
    B0 = 0.5;  % 控制峰值位置
    C0 = 1;   % 控制低频下降
    D0 = 1;   % 控制高频下降
    init_params = [B0, C0, D0];

    % 归一化 Barten 形式的单峰函数（A 固定为 1）
    csf_model = @(params, X) exp(-params(1) .* X.^2) ./ sqrt(params(2) + params(3) .* X.^2);

    % 使用非线性最小二乘拟合
    options = optimset('Display', 'off');
    fit_params = lsqcurvefit(csf_model, init_params, X, Y, [], [], options);

    % 计算拟合曲线
    Y_fit = csf_model(fit_params, X);
end