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
BZh91AY&SY4>�� ���{x" ����������`D@ `�z����6�9�i{��nYVڕER� �AZ� �  �          2�z�T�i6C6��FA��� 4    @44  4�4i�  C  $H�����P���<S�ڏS��y5�OQ�OI�F�M=C'� �D���cD �i�M�MM��H���ԃ�A�4�bhh�F��M�&��4�OH�	�)�h�y�oJz��S�oI2aq[�W)?����Y�A�y�B���_\�Λ��D+ߑ��vAfr �X�@L�V8�a����w"��O�-��Uu `�)���*�]���]�����Jk�?RS���SD�՝���I�?�m^�)2Mir77��a�~md��x:G^J�D�XS���G�o�I;4��ʂx��I6��/�s≰;쁉�#���swk4@@�!��B�8vn��AK��955��o���q�3��iDA��Z5�H�*W��TM��u��ڕ�Ib|����f�d���g�.cؿ�0���D���v�/��v����t ���M�޺�4��&^���þ���>��r���J�7j��+)/�&��O�A�����`,"��T���P�v@���$^�nO[��#�AT��h(�E���a&
��R�����N���@I� �;�n�ZcO�vWo)�ua�y ���m���u�?'aw��f��>>�ݏ^��.�Z&���R����<��j���Ku��y�fOs��J�4'��߉b�4�/D�9�ASb1@y/�)MQR��,'�5���YR���qerm��k�R����6{��[C;;3H�yyY�Go~�56�0�/7vQ�Ri%�k8B��Ã4ϥ�	�Lbll@ڸT�!=X��K��<�������H��	�}�hdA l��Ǯ�H�����;�z��H����d�@�ΤS�@/#�hw�1F����Ͱ,mؖ��C�_MN@6����vM�x��hibq�Ӏ\gl�*�d4H�7�A�К4���u��B��`��n�J���B~��y���}��z[ ^�C��v����L���Ǥ�x��T79�r�wǖ��S�b���9]x�FD:��Q�*�B�(���J�T��yb"����g�	i�J�5�*���nq�G
�/�m�o��x ]���2�TY����C/+�����'��5c��m9� �$�I|N>;Z)���9B�c%��ک��|�鴻e��E�'N��N�n�C7�|W�l CՈM�jM16>*���g�mL�B��"�������bz@��DD#Ɣ�{Gw�OP��c!��L���=@7C
��� +�۶�7c ���D�K��q=�I����B�J� g N�$V�wVLS�O�Gԟ�968��G�q�1[/�;������O��s8���m�ȵ��c�pa�NjU�Dkw� ;v����w/�����wե��;�w�T���c�#֐�X��Y}&���_n^�5D�fxsp�	5-���Ad�"�B��_�"��I2%e��4���ң	�o��4���8%�m�P��s7�Y��/Y�>�0\�>�����i�U �Ԃb�xI���N �˯F�}����l�b3l ����:s�}�U4�0�_ѯ��n,+�[z�WB��j���Yf���[��{��惲Ov���f�543�T��˩�ff��Ë����j�6w7igW�����!!˔^��6�pw�cȒ�1�mȈp � �>��G���>���,�BM>��3����g�9��P��n	�<�w�l=��?%�|>���+�%rGhe�j�ǈ�"�j�<�?l��c�X�`���0�~�!�HLӰ�$��CY8�uȹ!~U���m}c�W�7��0-��/�}8�xV��u�w��hD�ȝ�0�6�NqI�J0����w����
bHSe��D ��g�RNG-�hJ�KUh��7O��	I��ū?�哰��M�Z@� =�P�$6�ER�P�`g6g}�!O�Y_)Qa	k�h����D<p�U=5�ބ�ۛ����+�]�Cp��R�%b�,XB��:<E�Џ�0 t���xd�m� u�'k ����OKR��n�|�`���I�#o��H�/d��� w���6r�`���IJ�*�C���$�7 �[�.�;-46��3<#�j��x�b�3��X��`5TVF�Z��9h�a���LS1���jt0�0�P`�{��z�m���o'���b7M�'���ik����Q��(�zI��N�	L�H��8棥6���r���F���c!��^�k�����lh�6,9��@�5WvE tf57 z�}����֫�_5w���uM,}�W\�9���dY�B������<��G����m��:	5p�4�6��z����8�30e�8�U�Id� $F\��sC?��%�����EC!��4���1	ZH �^���z���Zs������n2�YP���#a����MC?T�2�4����t9�t?����yN�	8VR!��$;����^�p�,�m�ھ@-�C��Q{�	(�0G�b�8���8֗�5Q��y)H���Cm�a� ﰇI�@d6Լx��s�2Q�K@�\��SHz5N�C�M�C"rjz��H%v,h���]�9Q��jah\fn���Aཥ�9�3BN&�Bl5pE5P$A��ԡaP9��W�ѺsQ�.��ӱ�i�$���d$�4NW�>p M�݆�x�H�vX�:���=:*��ɷ:x�	�K��ӽ[4<��@6n����F��*e&��･��B" F �-�;q�;F�a������+d�q�@u�!�7�v'[4�o�{^�iC����m:�w��� T�R� �}(B��
����"�ԡ( ���H�
�ӻ�