#PBS -N main_baseline
#PBS -j oe -l select=1
#PBS -q GPU-1

cd $PBS_O_WORKDIR


(singularity exec --nv $IMAGES/ubuntu18.sif bash main_baseline.sh > main_baseline.log) >& /dev/stdout
