# conda memo

### show/add/remove channels
    $ conda config --show channels
    $ conda config --add channels [foo]
        * added channel will become highest priority  
    $ conda config --append channels [foo]
        * add channel without changing highest priority  
    $ conda config --remove channels [foo]

### Delete anaconda and download miniforge
Delete anaconda

    $ anaconda-clean # this will delete ~/.condarc, ~/.conda etc.
    $ cd PATH_TO_ANACONDA
    $ rm -rf anaconda3
    $ python
    -bash: /root/anaconda3/bin/python: そのようなファイルやディレクトリはありません 
    $ vi ~/.bashrc # delete anaconda3 related lines
    $ source ~/.bashrc
    $ python --version
    Python 2.7.5 (default, Jan  1 2022, 00:00:01)
    
Download [miniforge](https://github.com/conda-forge/miniforge)

    $ curl -L -O https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-$(uname)-$(uname -m).sh
    $ bash Mambaforge-$(uname)-$(uname -m).sh

alternatively,

    $ wget https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-$(uname)-$(uname -m).sh
    $ bash Mambaforge-$(uname)-$(uname -m).sh

Check channels to see if defaults are not included

    $ conda config --show channels


References
- [Anacondaの有償化に伴いminiconda+conda-forgeでの運用を考えてみた](https://qiita.com/kimisyo/items/986802ea52974b92df27)
- [Ubuntu 18.04 LTS から Anaconda をアンインストールする手順](https://qiita.com/yto1292/items/b25d24dd5d8f7ab3d244)
- [さよならアナコンダ（How to uninstall Anaconda）](https://qiita.com/osk_kamui/items/9ca86a5b96e3ff5382dc)