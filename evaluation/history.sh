    1  git fetch upstream
    2  git checkout -b eval_p2_1_v1 upstream/eval_p2_1_v1 branch 'eval_p2_1_v1' set up to track 'upstream/eval_p2_1_v1'
    3  git checkout -a eval_p2_1_v1 upstream/eval_p2_1_v1 branch 'eval_p2_1_v1' set up to track 'upstream/eval_p2_1_v1'
    4  git checkout -b eval_p2_1_v1 upstream/eval_p2_1_v1
    5  git remote -v
    6  git fetch upstream
    7  git checkout -b eval_p2_1_v1 upstream/eval_p2_1_v1g
    8  git checkout -b eval_p2_1_v1 upstream/eval_p2_1_v1
    9  git fetch upstream --prune
   10  git branch -r | grep upstream
   11  git checkout -b eval_p2_1_v1 upstream/eval_p2_1_g2
   12  git push -u origin eval_p2_1_v1
   13  history
   14  cd ~
   15  cd kepler
   16  cd /workspaces/UNIX-02-SIN-A-Mar-Jul-2026/
   17  mv kepler/docs kepler/registros
   18  mkdir kepler/plantillas
   19  git add.
   20  mv kepler/docs kepler/registros
   21  ls kepler
   22  sudo ls kepler
   23  ls -F
   24  ls
   25  cd evaluation
   26  ls
   27  mv kepler/docs kepler/registros
   28  mkdir kepler/plantillas
   29  cd ..
   30  git add .
   31  git commit -m "Fix problema 1: estructura de directorios corregida"
   32  ls -R kepler
   33  cd evaluation/
   34  ls -R kepler
   35  cd kepler/docs
   36  ls -R kepler
   37  mv kepler/sensores.log kepler/registros/
   38  mv kepler/ajustes.old kepler/ajustes.conf
   39  ls -R kepler
   40  git add .
   41  git commit -m "Fix problema 2: archivos movidos y renombrados"
   42  chmod 600 kepler/registros/sensores.log
   43  ls -l kepler/registros/sensores.log
   44  git add .
   45  git commit -m "Fix problema 3: permisos numericos 600 en sensores.log"
   46  chmod u+x kepler/runner.sh
   47  chmod o-w kepler/ajustes.conf
   48  ls -l kepler/runner.sh kepler/ajustes.conf
   49  chmod o-w kepler/ajustes.conf
   50  ls -l kepler/runner.sh kepler/ajustes.conf
   51  chmod go-w kepler/ajustes.conf
   52  ls -l kepler/runner.sh kepler/ajustes.conf
   53  git add .
   54  git commit -m "Fix problema 4: permisos simbolicos corregidos"
   55  git add .
   56  git commit -m "Fix problema 3: permisos numericos 600 en sensores.log"
   57  git log --oneline -n 5
   58* git push origin eval_p2_1_v
   59  chmod u+s kepler/runner.sh
   60  ls -l kepler/runner.sh
   61  git add .
   62  git commit -m "Fix problema 5: SUID activado en runner.sh"
   63  git commit --allow-empty -m "Fix problema 5: SUID activado en runner.sh"
   64  git log --oneline -n 5
   65  chmod +t /tmp/kepler_zone
   66  sudo mkdir -p /tmp/kepler_zone
   67  sudo chmod 777 /tmp/kepler_zone
   68  sudo chmod +t /tmp/kepler_zone
   69  ls -ld /tmp/kepler_zone
   70  git commit --allow-empty -m "Fix problema 6: sticky bit en /tmp/kepler_zone"
   71  gpg --batch --passphrase "" --quick-gen-key "vega <vega@kepler.lab>" default default never
   72  ls kepler/registros/
   73  gpg --list-keys
   74  gpg --encrypt --recipient vega@kepler.lab --output kepler/registros/sensores.log.gpg kepler/registros/sensores.log
   75  ls kepler/registros/
   76  git add .
   77  git commit -m "Fix problema 7: llave GPG generada y sensores.log cifrado"
   78  gpg --clearsign --output kepler/ajustes.conf.asc kepler/ajustes.conf
   79  gpg --verify kepler/runner.sh.sig kepler/runner.sh
   80  gpg --detach-sign --output kepler/runner.sh.sig kepler/runner.sh
   81  gpg --verify kepler/runner.sh.sig kepler/runner.sh
   82  git add .
   83  git commit -m "Fix problema 8: firmas GPG corregidas y creadas"
   84  git push origin eval_p2_1_v1
   85  history
   86  history > history.sh
