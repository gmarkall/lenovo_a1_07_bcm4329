執行腳本：cdpg_build_wifi_248.sh

備注：
在cdpg_build_wifi_248.sh中需要設置：
1.第7行：cd /host/sourcecode/bw-kn-2.3.4
  把/host/sourcecode/bw-kn-2.3.4換成本機上的kernel路徑(請先確保已成功編譯過)

2.第15行：export PATH=/host/sourcecode/arm-2010q1/bin/:$PATH
  把/host/sourcecode/arm-2010q1/bin/:$PATH換成本機上的交叉編譯路徑(版本是arm-2010q1)
