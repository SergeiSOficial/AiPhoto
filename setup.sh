sudo apt-get update 
sudo apt-get install curl git bzip2 unzip python3-tk python3-pip ffmpeg libsm6 libxext6 cmake -y 
mkdir input output 
explorer.exe .
git clone https://github.com/SergeiSOficial/AutoDeOldifyLocal.git 
cd AutoDeOldifyLocal 
sudo chmod +x *.sh 
./fix.sh 
./setup.sh 
eval "$(~/miniconda/bin/conda shell.zsh hook)" 
conda init 
cd ../ 
git clone https://github.com/microsoft/Bringing-Old-Photos-Back-to-Life.git 
cd Bringing-Old-Photos-Back-to-Life 
cd Face_Enhancement/models/networks/ 
git clone https://github.com/vacancy/Synchronized-BatchNorm-PyTorch 
cp -rf Synchronized-BatchNorm-PyTorch/sync_batchnorm . 
cd ../../../ 
cd Global/detection_models 
git clone https://github.com/vacancy/Synchronized-BatchNorm-PyTorch 
cp -rf Synchronized-BatchNorm-PyTorch/sync_batchnorm . 
cd ../../ 
cd Face_Detection/ 
wget http://dlib.net/files/shape_predictor_68_face_landmarks.dat.bz2 
bzip2 -d shape_predictor_68_face_landmarks.dat.bz2 
cd ../ 
cd Face_Enhancement/ 
wget https://github.com/microsoft/Bringing-Old-Photos-Back-to-Life/releases/download/v1.0/face_checkpoints.zip 
unzip face_checkpoints.zip 
cd ../ 
cd Global/ 
wget https://github.com/microsoft/Bringing-Old-Photos-Back-to-Life/releases/download/v1.0/global_checkpoints.zip 
unzip global_checkpoints.zip 
cd ../ 
pip install -r requirements.txt 
pip install basicsr facexlib realesrgan easydict 
cd ../ 
git clone https://github.com/TencentARC/GFPGAN.git 
cd GFPGAN 
pip install -r requirements.txt 
python setup.py develop 
wget https://github.com/TencentARC/GFPGAN/releases/download/v1.3.0/GFPGANv1.3.pth -P experiments/pretrained_models 
cd ../ 
cd AutoDeOldifyLocal/DeOldify/ 
pip install -r  requirements-colab.txt 
mkdir models 
wget https://data.deepai.org/deoldify/ColorizeArtistic_gen.pth -O ./models/ColorizeArtistic_gen.pth 
wget https://www.dropbox.com/s/usf7uifrctqw9rl/ColorizeStable_gen.pth?dl=0 -O ./models/ColorizeStable_gen.pth 
conda env create -f environment.yml 
conda activate deoldify 
cd ~
