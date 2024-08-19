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

unlink data/train/$EXP_NAME/0_real
unlink data/train/$EXP_NAME/1_fake
unlink data/val/$EXP_NAME/0_real
unlink data/val/$EXP_NAME/1_fake
unlink data/test/$EXP_NAME/0_real
unlink data/test/$EXP_NAME/1_fake