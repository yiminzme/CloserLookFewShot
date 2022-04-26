# print start info
echo 
TZ="Asia/HongKong"
curr_time="`date +"%Y%m%d_%H_%M_%S"`"
curr_sec=$(date +%s)
echo "Start $curr_time"
echo kill $$
echo

# build and execute command
cmd="python3 -u ./train.py --dataset CUB --model Conv4 --method maml_approx --train_aug"
# cmd="jupyter nbconvert --to notebook --execute run.ipynb --output run_1.ipynb"
log_file="\"log/$curr_time maml_approx.log\""

final_cmd="{ $cmd; } &>> $log_file"
echo $final_cmd
eval $final_cmd

# print end info
echo
curr_time="`date +"%Y%m%d_%H_%M_%S"`"
echo "End $curr_time"
elapsed_time=$(($(date +%s)-$curr_sec))
echo "Elapsed time ${elapsed_time}s"