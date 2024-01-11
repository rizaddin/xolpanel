#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SYf�D  ��5p ����������@   P}����z�[�6v��J~��F�53��z��z�OH�@<Q���3SM� L��4d�ѢmCM��M �����*yOMOP��Q���h4�� �� �  �$M����jbz��i�i�� 4h4hh��M�2�(ޤ��z�i��  4i� �]#���A�-�t�.|ۓG/��i&�YWNR��a��n#i�A!�וQ4�����
l�.H�8FkL 3g6�Q~�o�r�h�RJ�2"=�_	�`�����^>���d��z��U��D���ё��ڋ4�S\�R���4r���N���������b��xa���a�8T�9A0���Iٚ�*O�r��y�ngV>>
30�.��ljz����Q:�m���d4���֭[����u*ܙ� 70Be�K1���Q��w#�j �*��6Vt����.-`�F�HC)�� !k��B
�42CT�����F{� �d5��MSr���/�S���XK%Ài[z��l�Jt.�lV:�I+�+i�l1��U��a!^ꄅ����3�aDn8J�.�
�';W��5��՞BѾd���57'Bd�O�؏���m�4���3v�T��v�P�0����s<p�ON�J�J��N"��.Gy�{Ȅ�ʝ�jk���Yr�n?�|x2d�ߤ�y�xMr�,JY��L`"@�扣�W �`���_�2�.K�.l6�~,���J���RF���%�@�Iz�-�)5�7�x6�H�-��6���pd��z�4X0��1�#ӹ��7���� ^�vk��X�>�3�j`�lp	������̋)y%~�n��&1���{��qpF�g�2���k��4��O�[� N�S�O�<�J�ʉ���D��ңL�+���B�x�JVL��v��5Z�����w�'t�F������`�H�\v���
ʧҔ��"�5A���Y՞�h6=�:M6"�0.��d���:�o�(���"Xlь�MZ��S,�6H͋���3]
�����14�k~�����2ҵSM����0ȗnYHE��߸<3��c0W�Rb�2Х��P���ۀ�nx�'�V�B:��h�!���ĕ*������v����#��8�f���pgSQ��ZS�m�"�+&��P�D6��i-J+��.z���t���C��I-]�(�����$���Pg5��v
l>|��Ei�������T�6�a�FU��S-f|�,��n�5_*���!��НP������v�ɝۃ�ڬ>XQ;�֊k4�G�T��D�	��:�/��#�`:[�X5)���N]S5��b�h����ؑ@BI���pP5\��jCF}'���9�4�4�e�pY�֢�}$�f(�D�9sȶ�DA;0&�2�� c�"$b�cϏa(!��l�@W�
ǻ�b)M�����Ukv��ŉ^Ff�7_��Z��]�_�@�@� 5��]��BA��q