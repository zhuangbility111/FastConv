import torch.nn as nn
import math

nn.Conv2d(in_channels=num_channels,
            out_channels=cnt_filters,
            kernel_size=filter_width,
            stride=horizontal_stride,
            padding=padding_width,
            dilation=problem_params["dilation"],
            groups=1,
            bias=True,
            padding_mode='zeros')