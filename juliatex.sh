myenv
git clone https://github.com/sisl/tufte_algorithms_book.git
cd tufte_algorithms_book
git submodule init
git submodule update
cd style
python setup.py install
cd ..
cd lexer
python setup.py install
cd ..
# pgfplots, pythontex一般texlive自带
pip install pygments

