/opt/ANDRAX/python3.13/bin/pip3 install pipx

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Install PIPX... PASS!"
else
  # houston we have a problem
  exit 1
fi


PIPX_HOME=/opt/ANDRAX/pipx PIPX_BIN_DIR=/opt/ANDRAX/pipx/bin PIPX_MAN_DIR=/opt/ANDRAX/pipx/man /opt/ANDRAX/python3.13/bin/pipx install --force "git+https://github.com/snakesec/dnschef-ng.git#egg=dnschef-ng[api]"

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Force install DNSCHEF-NG... PASS!"
else
  # houston we have a problem
  exit 1
fi

cp -Rf andraxbin/* /opt/ANDRAX/bin
