# AiPhoto
Scripts to restore old photos

https://habr.com/ru/post/695962/
https://youtu.be/KxfeA5hssps


https://t.me/savkinsa/82
https://t.me/savkinsa

Using algorithms
1. https://github.com/microsoft/Bringing-Old-Photos-Back-to-Life
2. https://github.com/TencentARC/GFPGAN
3. https://github.com/jantic/DeOldify with help https://github.com/daddyparodz/AutoDeOldifyLocal

Tested on WSL Ubuntu 20.04 22.04
Windows 10 11

### COMMANDS: [DON'T RUN AS ROOT]
To copy project

```
git clone https://github.com/SergeiSOficial/AiPhoto.git
cd AiPhoto
sudo chmod +x *.sh
```

And run setup
```
./setup.sh
```

To run (WIP)

```
./run.sh (WIP, not working yet)
```

To run separately
```
cd AutoDeOldifyLocal/DeOldify/
conda activate deoldify 
cd ../../Bringing-Old-Photos-Back-to-Life 
python run.py --input_folder ../input --output_folder ../output/BOPBTL/ --GPU -1 --with_scratch --HR 
```

```
cd ../GFPGAN
python inference_gfpgan.py -i ../input -o ../output/GFPGAN/ -v 1.3 -s 2
```

```
cd ../AutoDeOldifyLocal/DeOldify/
python RunColorizer.py --input_folder ../../input --GPU -1 --output_folder ../../output/DeOldify/ --artistic True
cd ../../
```
