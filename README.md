# XIOS 1.0 r703

This is a clone of xios 1.0 r703 to be used with NEMO 3.6.
For further information please consults: [NEMO 3.6 (stable) + XIOS 1.0](https://nemo-related.readthedocs.io/en/latest/compilation_notes/nemo36.html)


# Install

```
git clone -b r703 https://github.com/anto6715/xios-1.0 xios-1.0.branch.r703
./make_xios --arch X64_<YOUR_ARCH>

```

## Install on Zeus

```
git clone -b r703 https://github.com/anto6715/xios-1.0 xios-1.0.branch.r703
bsub -P <PROJECT_ID> -e log_err -o log_out -q s_short "./make_xios --arch X64_ZEUS5"
```

## Install on Juno

```
git clone -b r703 https://github.com/anto6715/xios-1.0 xios-1.0.branch.r703
bsub -P <PROJECT_ID> -e log_err -o log_out -q s_short -M 2G "./make_xios --arch X64_JUNO"
```
