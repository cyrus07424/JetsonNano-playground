# Mine monacoin

## Usage

```sh
./mine_monacoin.sh
```

## Tips
ビルド時に`ccminer/Makefile.am`の134~135行目を以下のように変更
```
nvcc_ARCH += -gencode=arch=compute_53,code=\"sm_53,compute_53\"
#nvcc_ARCH += -gencode=arch=compute_52,code=\"sm_52,compute_52\"
```

## 参考
- https://github.com/tpruvot/ccminer/wiki/Compatibility
- https://github.com/tpruvot/ccminer/blob/linux/INSTALL