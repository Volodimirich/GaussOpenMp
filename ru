#BSUB -n 5
#BSUB -W 00:30
#BSUB -o my_job.%J.out
#BSUB -e my_job.%J.err
#BSUB -R "span[hosts=1]"
OMP_NUM_THREADS=1 ./a.out
OMP_NUM_THREADS=2 ./a.out
OMP_NUM_THREADS=4 ./a.out
OMP_NUM_THREADS=8 ./a.out
OMP_NUM_THREADS=16 ./a.out
OMP_NUM_THREADS=32 ./a.out
OMP_NUM_THREADS=64 ./a.out
