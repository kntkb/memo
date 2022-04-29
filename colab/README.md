# Google Colab

### Quick start
install miniforge and create rdkit environment  
$ https://colab.research.google.com/drive/1zFCuynLrL_7XzGeh9KkwTfxgOnvcUD0V?authuser=1

    !pip install -q condacolab
    import condacolab
    condacolab.install()

    %%capture
    !conda config --add channels rdkit
    !conda update --yes --all
    !conda install -c rdkit rdkit --yes 

    import sys
    import os
    sys.path
    print(sys.version)

    !python -c "import site; print (site.getsitepackages())"
    
    #sys.path.append('/usr/local/lib/python3.9/site-packages')

    import rdkit
    from rdkit import Chem
    from rdkit.Chem import Draw
    print(rdkit.__version__)
    mol = Chem.MolFromSmiles('Cc1ccccc1')
    Draw.MolToImage(mol, size=(100,100))