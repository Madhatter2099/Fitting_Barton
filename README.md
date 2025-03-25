# Fitting_Barton
一种基于数组的拟合方式，目标曲线为单峰不对称曲线。能够自行调整目标峰值对应的坐标与峰值左右的变化速度。基于Zong Qin的代码修改，已于文件中保留源代码与版权信息。

An array-based fitting method where the target curve is a single-peak asymmetric curve. It is able to adjust the coordinates corresponding to the target peak and the speed of change around the peak by itself. Based on the code modified by Zong Qin, the source code and copyright information have been kept in the file.

代码文件

fit_csf_normalized.m：主函数，用于拟合单峰曲线。

example_2.m：示例脚本，演示如何生成数据并进行拟合。

A 控制整体幅度，在此代码中固定为 1 以适应归一化数据。

B 控制峰值位置。

C,D 影响曲线在低频和高频端的变化。

目标是通过最小二乘法优化 

B,C,D 以最优匹配数据。

依赖环境

MATLAB 2016b 及以上版本。

需要 Optimization Toolbox（包含 lsqcurvefit 函数）。

代码优化建议

调整初始参数 (B0, C0, D0) 以适应不同形态的数据。

使用更复杂的非对称函数（如 exp(-B X^α)）适配更复杂的峰值形态。

支持不同类型的数据归一化，如 min-max scaling 处理 Y 值范围不同的数据。

Code file

fit_csf_normalized.m: main function, used to fit a single peak curve.

example_2.m: example script demonstrating how to generate data and fit it.

A controls the overall magnitude and is fixed to 1 in this code to accommodate the normalized data.

B controls the peak position.

C,D affect the variation of the curve at the low and high frequency ends.

The objective is to optimize by least squares 

B,C,D to optimally match the data.

Dependent Environment

MATLAB 2016b and above.

Requires Optimization Toolbox (includes lsqcurvefit function).

Code Optimization Suggestions

Adjust the initial parameters (B0, C0, D0) to fit different patterns of data.

Use more complex asymmetric functions (e.g. exp(-B X^α)) to adapt to more complex peak patterns.

Support different types of data normalization, e.g. min-max scaling for data with different range of Y values.

Translated with DeepL.com (free version)

Copyright (c) 2025, Eaton Kao
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

* Redistributions of source code must retain the above copyright notice, this
  list of conditions and the following disclaimer.

* Redistributions in binary form must reproduce the above copyright notice,
  this list of conditions and the following disclaimer in the documentation
  and/or other materials provided with the distribution
* Neither the name of National Chiao Tung University nor the names of its
  contributors may be used to endorse or promote products derived from this
  software without specific prior written permission.
THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
