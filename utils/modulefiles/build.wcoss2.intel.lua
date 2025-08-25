help([[
Load environment to compile UFS_UTILS on WCOSS2
]])

cmake_ver=os.getenv("cmake_ver") or "3.20.2"
load(pathJoin("cmake", cmake_ver))

PrgEnv_intel_ver=os.getenv("PrgEnv_intel_ver") or "8.3.3"
load(pathJoin("PrgEnv-intel", PrgEnv_intel_ver))

craype_ver=os.getenv("craype_ver") or "2.7.17"
load(pathJoin("craype", craype_ver))

intel_ver=os.getenv("intel_ver") or "19.1.3.304"
load(pathJoin("intel", intel_ver))

libjpeg_ver=os.getenv("libjpeg_ver") or "9c"
load(pathJoin("libjpeg", libjpeg_ver))

zlib_ver=os.getenv("zlib_ver") or "1.2.11"
load(pathJoin("zlib", zlib_ver))

libpng_ver=os.getenv("libpng_ver") or "1.6.37"
load(pathJoin("libpng", libpng_ver))

bacio_ver=os.getenv("bacio_ver") or "2.4.1"
load(pathJoin("bacio", bacio_ver))

w3emc_ver=os.getenv("w3emc_ver") or "2.12.0"
load(pathJoin("w3emc", w3emc_ver))

g2_ver=os.getenv("g2_ver") or "3.5.1"
load(pathJoin("g2", g2_ver))
