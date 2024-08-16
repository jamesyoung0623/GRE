### make sure that you have modified the GENERATION_MODEL
GENERATION_MODEL="gaussian-splatting"
# GENERATION_MODEL="mip-splatting"
# GENERATION_MODEL="Compact-3DGS"
# GENERATION_MODEL="ges-splatting"
# GENERATION_MODEL="Scaffold-GS"
# GENERATION_MODEL="GS-IR"

RECONSTRUCTION_MODEL="gaussian-splatting"
# RECONSTRUCTION_MODEL="mip-splatting"
# RECONSTRUCTION_MODEL="Compact-3DGS"
# RECONSTRUCTION_MODEL="ges-splatting"
# RECONSTRUCTION_MODEL="Scaffold-GS"
# RECONSTRUCTION_MODEL="GS-IR"

REPRESENTATION=$RECONSTRUCTION_MODEL"_gre"
# REPRESENTATION=$RECONSTRUCTION_MODEL"_noise"
# REPRESENTATION=$RECONSTRUCTION_MODEL"_frequency"
# REPRESENTATION=$RECONSTRUCTION_MODEL"_rgb"

DATASET="tandt"
# DATASET="mip_nerf"
EXP_NAME=$DATASET"_"$GENERATION_MODEL"_"$REPRESENTATION

ln -s /home/jamesyoung0623/rendering_deepfake/dataset/$REPRESENTATION/real/$DATASET/train data/train/$EXP_NAME/0_real
ln -s /home/jamesyoung0623/rendering_deepfake/dataset/$REPRESENTATION/synthetic/$GENERATION_MODEL/$DATASET/train data/train/$EXP_NAME/1_fake
ln -s /home/jamesyoung0623/rendering_deepfake/dataset/$REPRESENTATION/real/$DATASET/val data/val/$EXP_NAME/0_real
ln -s /home/jamesyoung0623/rendering_deepfake/dataset/$REPRESENTATION/synthetic/$GENERATION_MODEL/$DATASET/val data/val/$EXP_NAME/1_fake
ln -s /home/jamesyoung0623/rendering_deepfake/dataset/$REPRESENTATION/real/$DATASET/test data/test/$EXP_NAME/0_real
ln -s /home/jamesyoung0623/rendering_deepfake/dataset/$REPRESENTATION/synthetic/$GENERATION_MODEL/$DATASET/test data/test/$EXP_NAME/1_fake