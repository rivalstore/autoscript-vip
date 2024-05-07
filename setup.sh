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
BZh91AY&SYt�d ���������������0 �@�@ ���۾i�z�-'�>�{ˮ���a_g���sJ�:��]U$%�B&��)IQ*% T��IdɤɅ��I����M��i��1=�@Q� 4  ��	h@44h  4   F�   IF��Q�)�I�z�S �@i��   �� � "QT􆍩�P SG�4 i��d�    44 zAD�S�3B&O��6#SOHz��4hh��a�ddѧ��"�@#A0���a���OS�M= ڏS�6���)�44�4 -	�ｌ�j�{�g�G�6O#�ر�,�hM�s6��|\:��Iʻh��K�W���B��aU.�ѥtJa	8p���N����c8�:xܓ���O�|�X>�Z�.P��~.Z�
�<�]p��R�Gr�X{.�A�z�Lrz�PrMP`�-�(�T]��z $�s�#���hȐW�:	i9K��>7�ŭu˻Kӛ{�qU~�ڛڧP�E�\�
��cڛ`6�ʚ"
��1�+�ш�7[�ep��C�t��=�rj��4ĈK6�>��$���v�xQ!�GbMC����`�A�<�=�ƴ��(�L@u���vL@幔q�e"4G|�yQ��&�����i!��TP��ET��c�<�:t�X�ǉ\IE[���8�ph���O1��O����G$���N���l�@��1;���q���H}C"%Ѩ[tH�!"C�p�ǥ>��������p��d� ��=�ZZ�tome('�6��.\Tmߊ7u/LS����%_�8�E�Y5c�y{���}�{ ��|�@g?S��=׷����t�n������g�K�"����O�V�\����4���>���RBm;�;�G����p��BM7�H�"I���x�e�i9�{]�,�.����!CU���Z�ҁ�+T������O,L�+���f~z�
o$��C��
 �ۛos��o�%�����%c�^�����Q"g)ֲ��~?>�l�Ț0�?���sq�6�6�~�,��tm���d����78���%�t�uy��#f,�5�&=06�ᗜc�S����}kOrt^C{F<0�����<��(v�ϋQ^�٬Vk0i�B��$$	�j^(�YT2F�KNC8ٰ�Ѷ�w�9�d����62��\n�B�7����<#_��Eب�%E����ӠOk�l}\@8D$$�I��p�����R���.���=�:���}F9=�v�%QR�ą�킈��J�`����b��	�(��i�F����m��s5�˞N�zva�y�D��Ɛ��v�6:�#F,�Y*�b[��]n	;>��a�+)0!�A���/{TY ,b�KaN�'/�E,��%��$�ޜf�����xa��+�[�g���x.�ڗ���on.��� �)�]��=����@$4:̭q,QB��i�1�J�{������h��b8M�l:3= K�JՂF��A��R���$�I!	
�����$ؔe7�~�R���Pm�3}	�����a��J� �F"��(���JX_˻���#��&zG�WA3�d�B��,At2@�%"@��.�1�t��QM��>�L�̑�l!�.���V����]�$�Ȧ�$�T3�/v���`!Dͩ'�&���"�dxQ*��*��ZV����n��jxY��%����������]�P�U_��|�O�P��K!<P�7b�P<P>�>#5~P�.=HN�=;c&y\�����JT�����	��n1JYq%�,�f^#f�w��{4͆*:%K;gmHZ�:ꖴ1���8�1b��B[C�����Yȴ�x���t�?�����[������I��-8�ψ�ER�_�kص��%(�=����� ��� 8	�8*H�8�N�����m�M�$�]5�
�ws��Ð~���.�lu/��B0[-a��}��QMu�(��n�a�Ĺf���\���$� ���f��=������,hjVVx[�L|��P0'�<��%�)PO,�G�U��'�[h�H����> ��|ts��6�D�����zK'�_��*]�oC��v���6T^zX4�7w�%%�w��l�Vö� (��Ydn)��-�U�k�o�ɥ 	��λu�Sܣ�F�n�s�5��f]��¸�WV���Q��^:o���Uy�)p�.G��É�e�O��A���05)����I$�~rZB�L��f�2բ�=O%�GY;;�l
�H�=�j\���_���B �?V�}<�/�u��a8��`,��˻$��I�y�}����.�$�z�*K}. \"Mǒ�k�ѷ$�-Xt76l����'N&��&u?-1���Җc�W�-�z�{>���aށ���+)�@�#����L)�y���|���>�y}z=;�x4�2���f9��.�]:�Ĳ��T��%���'�y�4���{ns
�9�#Q3�d�D�+�X�@$��v��G%ҝ@�������ջH�"@�i��q�d$6����&C������/ޖ#s��}�$�����䰻�	�8_=o�����<L48\RE�S�f];�X�������O7x'�9�V=I�9$!!��8#���pMyd���D��mM钙8&3��-ׂ߰�G�B����`��zg�0Ù^�RB���t����6�M�/��1*Y�E�l��P�t:LK�ԋڷ��
�J��3�w8˞}1������4؟��^ޒ�$��/�Ǟ��8k	D��]����DJn������U�lK�廹˽4~}[��B��$O��Ѡ�Ô�[�ή]�C��NS𐼲�i{f�#L?f蚓�R@pR����=S,/,d�E�2��E��z��.ω�rd�uL�0�?���ۀ�s06:�@
�^׮Z��-���h14_7�&H.Bs�8�������	++�BW�o�e8�q���7砺\����ݱh[t�E�w���1�Cf9�'�X�=��F���҇��:�_P������hf	�_F�bs��b"l�Hp8?y�I~vT"��I�_��򟵚��&ؐ�}t��w~Z���?cF^�{w���LR�1���K�3Q Rp�fw�a%C�.	 ^$��,����	�ϹN�&�p��_��C\6;�ĝ3N3$�'�x-�����@�Ɲt�Ou,�/
d6�t�����jo����:�Nc������ϪdrF��k��i5}�&�cq�:?�a����$�X�(�"��ʄu�|��ҿX;�u&t�!�<�u�I����<d��sW�m鷑��������H�DJ�Wb��s ���!���w�ߗ�0@����$& �t6��)O±b�0 ��@P>^"�-�#p���C1��H��VP���v1y��S;P��� ��ќ��p40,M��Nyƚ�ӇU�	�X'���[Y� ]<�Eϛ�����햰HHWt�L�R#T8����IbXr.'���.����e�ђ֒Or�Z�o�,E��W{;�e햁Fe��mcqeRM�7Y�c�0�j!��6�}.=:+1F~*Ȍ�կrE~n�A�2�s��7@�S�Z�6/� ��9����1!G�$A׉�Ew�ޅ%��|A�3hRB�@�9����0����-��7Oi!@��s���	<`�l�5V`�6�c�;�[92D�����ux��\���%����wԟ.��Ĵ]c�f+�#��D���C���c��r�",0@�rH�T�5�@S�S���H�x[4Q=�M��?aC-A�я0�q`��PbY'�f<�x=	IB�1;�ؔ۾�L�ʽ��ޕ�Wg��u<�;íw���]�a���G/�!bRx�Yɸ��1G� �� [�9oq^bto*���{ZB��v)�f&����٥C��+mK� ����G���21��	���k!�^��)��&��~|��B|��B
P_PI�d�v-u���e�G��(ϰ9�@@�@�"��0`�@�*z2�D�� NP��Ҫ~�.b�*����ێ�@��(m)�g�Ui���zQ�P@�
��l���AU%�s���]����_'��iJs��9����Joa�&��]*RXm�n?�+5�!�p�j��0°�=��29j5���f�.�D�|#��^��85D4�>�yBۥ��R��d"� @bE��� �,�*�De'
���(��b+��H1Hbא��Jt�i���O�"H�K@��!P����2Z�!�; �.�����HV ��%"�:�1&�~�N�T3N��;�o���ʒ�oZ�����{e��bو/�FB1���7 Յ�R��`��wȢ}��uI-�k�p�[
�Y.Ʊ�������{��p�1�����O�	�����+,b��`
�w��h=J� �=x`��D�%15�d���j���yӠ�,Q��Q�����]Z���H��bĒLI�!a����p�>��k�i,�����zG�� ��Bq`�7E����
S;&v�
�L��������q��<��)�PҁF�Q
�` ��)�GE�A`�:Hl��S<����e���gϧl�f������,_T3к_g��Z��B���5���������Ԅ6���;FV,z�ă��~��x��+�U�bC
(t��w�t�Ð����@�f��+�:�E,ûv�n\�3%r�%����hǋ��y�GT�q��v49�Ċ���X�a�	�w��
ꡫ�s��`cMijK"ʂlhz�;�����u�lW���:
Ȑ��wdL�O�����5�&�����4�C�u����	��/V��E�əj�������E����t����'�yNO-���TGwDD
h�"��5�8f�'ۖ�2���P;L)h�?xV�*1jH3�|��QZ��Y+ki��G��i�YV�3E3���C�����Xz���$�:�h:�9Z5S�6�j�|71"��G�+d����\L�V��n�3���<G�T�������?�i"k�=�U��h�����X<�'�Z����c``W� ���F-�����eO��}u�A��jy�b���� ��?@�_U�Ps����A�	��� de`
��,��?�]��BA�I�