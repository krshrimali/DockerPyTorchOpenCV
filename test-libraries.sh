# Tests to check if Python can import these libraries successfully
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

# Test if opencv libs have been linked or not
if ldconfig -p | grep opencv; then
    echo "OpenCV libraries are present."
else
    echo "No OpenCV libs found, link manually if you believe you've installed successfully"
    echo "Or try doing sudo ldconfig"
fi
