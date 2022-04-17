now="`date +%Y%m%d%H%M%S`";
now_format="`date +%Y/%m/%d %T`";
echo $now_format;
# execute run_1.ipynb in background, and save output to nohup_1.out
# nohup jupyter nbconvert --to notebook --execute run.ipynb --output run_1.ipynb > nohup_$now.out &
nohup python -u ./train.py --dataset CUB --model Conv4 --method maml_approx --train_aug > nohup_$now.out &

# print pid
echo kill $!
