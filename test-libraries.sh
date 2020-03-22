python3 -c "\
try:
    import cv2
    print('OpenCV was installed successfully')
except ImportError:
    print('Error occured, file issue on GitHub repo. OpenCV not installed successfully')"

python3 -c "\
try:
    import torch
    print('Torch was installed successfully')
except ImportError:
    print('Error occured, file issue on GitHub repo. PyTorch installed successfully')"
