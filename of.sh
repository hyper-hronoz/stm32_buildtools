if tmux ls | grep "openocd";
then
  bash b.sh && tmux kill-session -t "openocd" && bash f.sh && tmux new-session -s "openocd" -d "openocd -f interface/stlink.cfg -f target/stm32f1x_fake.cfg"
else
  bash b.sh && bash f.sh && tmux new-session -s "openocd" -d "openocd -f interface/stlink.cfg -f target/stm32f1x_fake.cfg"
fi
