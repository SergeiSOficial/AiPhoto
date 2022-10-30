cd AutoDeOldifyLocal/DeOldify/
conda activate deoldify 
cd ../../Bringing-Old-Photos-Back-to-Life 
python run.py --input_folder ../input --output_folder ../output/BOPBTL/ --GPU -1 --with_scratch --HR 
cd ../GFPGAN
python inference_gfpgan.py -i ../input -o ../output/GFPGAN/ -v 1.3 -s 2
cd ../AutoDeOldifyLocal/DeOldify/
python RunColorizer.py --input_folder ../../input --GPU -1 --output_folder ../../output/DeOldify/ --artistic True
cd ../../