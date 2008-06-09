= ���湽¤

  * [[unknown:���湽¤/���ʬ��]]
    * [[unknown:���湽¤/if]]
    * [[unknown:���湽¤/if ������]]
    * [[unknown:���湽¤/unless]]
    * [[unknown:���湽¤/unless ������]]
    * [[unknown:���湽¤/case]]
  * [[unknown:���湽¤/�����֤�]]
    * [[unknown:���湽¤/while]]
    * [[unknown:���湽¤/while ������]]
    * [[unknown:���湽¤/until]]
    * [[unknown:���湽¤/until������]]
    * [[unknown:���湽¤/for]]
    * [[unknown:���湽¤/break]]
    * [[unknown:���湽¤/next]]
    * [[unknown:���湽¤/redo]]
    * [[unknown:���湽¤/retry]]
  * [[unknown:���湽¤/�㳰����]]
    * [[unknown:���湽¤/raise]]
    * [[unknown:���湽¤/begin]]
    * [[unknown:���湽¤/rescue������]]
  * [[unknown:���湽¤/����¾]]
    * [[unknown:���湽¤/return]]
    * [[unknown:���湽¤/BEGIN]]
    * [[unknown:���湽¤/END]]

Ruby�Ǥ�(C�ʤɤȤϰۤʤ�)���湽¤�ϼ��Ǥ��äơ����餫���ͤ��֤���Τ�
����ޤ�(�֤��ʤ���Τ⤢��ޤ����ͤ��֤��ʤ������������α��դ��֤���
parse error �ˤʤ�ޤ�)��

Ruby��C�����Perl��������Ѥ������湽¤������ޤ�����
����¾��[[unknown:�᥽�åɸƤӽФ�/�֥��å��դ��᥽�åɸƤӽФ�]]�Ȥ���
���湽¤����ݲ��������뵡ǽ������ޤ����֥��å��դ��᥽�åɸƤӽФ���
�����֤���Ϥ�Ȥ������湽¤�򥯥饹�߷׼Ԥ�����������������ΤǤ�.

== ���ʬ��
=== if

��:

          if age >= 12 then
            print "adult fee\n"
          else
            print "child fee\n"
          end
          gender = if foo.gender == "male" then "male" else "female" end

ʸˡ:

          if �� [then]
            �� ...
          [elsif �� [then]
            �� ... ]
          ...
          [else
            �� ... ]
          end

��Ｐ��ɾ��������̤����Ǥ������then �ʲ��μ���ɾ�����ޤ���
if �ξ�Ｐ�����Ǥ���� elsif �ξ���ɾ�����ޤ���
elsif ���ʣ������Ǥ������Ƥ� if ����� elsif
�ξ�Ｐ�����Ǥ��ä��Ȥ� else �᤬����Ф��μ���ɾ������ޤ���

if ���ϡ���郎��Ω������(���뤤�� else ��)�κǸ��ɾ����
�����η�̤��֤��ޤ���else �᤬�ʤ�������ξ�������Ω���ʤ���
�� nil ���֤��ޤ���

Ruby �Ǥ� false �ޤ��� nil ���������ǡ�����ʳ��� 0 ���ʸ
�����ޤ����ƿ��Ǥ���

Ruby �Ǥ� if ��Ҥ���Τ� elsif �Ǥ��ꡢelse if
(C �Τ褦��)�Ǥ� elif(sh �Τ褦��)�Ǥ�ʤ����Ȥ����դ��Ƥ���������

�ޤ� if �ξ�Ｐ������ɽ���Υ�ƥ��Ǥ�����ˤ����̤�

          $_ =~ ��ƥ��

�Ǥ��뤫�Τ褦��ɾ������ޤ���

=== if ������

��:

          print "debug\n" if $DEBUG

ʸˡ:

          �� if ��

���դξ�郎��Ω������ˡ����դμ���ɾ�����Ƥ��η�̤��֤��ޤ���
��郎��Ω���ʤ���� nil ���֤��ޤ���

=== unless

��:

          unless baby?
            feed_meat
          else
            feed_milk
          end

ʸˡ:

          unless �� [then]
            �� ...
          [else
            �� ... ]
          end

unless �� if ��ȿ�Фǡ���Ｐ�����λ��� then �ʲ���
����ɾ�����ޤ���unless ����elsif ����ꤹ�뤳�ȤϤǤ��ޤ�
��

=== unless ������

��:

          print "stop\n" unless valid(passwd)

ʸˡ:

          �� unless ��

���դξ�郎��Ω���ʤ����ˡ����դμ���ɾ�����Ƥ��η�̤��֤��ޤ���
��郎��Ω���ʤ���� nil ���֤��ޤ���

=== case

��:

          case $age
          when 0 .. 2
            "baby"
          when 3 .. 6
            "little child"
          when 7 .. 12
            "child"
          when 13 .. 18
            "youth"
          else
            "adult"
          end

ʸˡ:

          case [��]
          [when �� [, ��] ...[, `*' ��] [then]
            ��..]..
          [when `*' �� [then]
            ��..]..
          [else
            ��..]
          end

case �ϰ�Ĥμ����Ф������Ƚ��ˤ��ʬ����Ԥ��ޤ���when
��ǻ��ꤵ�줿�ͤȺǽ�μ���ɾ��������̤Ȥ�黻�� === ���Ѥ���
��Ӥ��ơ����פ�����ˤ� when ������Τ�ɾ�����ޤ���

�Ĥޤꡢ

          case ��0
          when ��1, ��2
            stmt1
          when ��3, ��4
            stmt2
          else
            stmt3
          end

�ϰʲ��� if ���Ȥۤ������Ǥ���

          _tmp = ��0
          if ��1 === _tmp or ��2 === _tmp
            stmt1
          elsif ��3 === _tmp or ��4 === _tmp
            stmt2
          else
            stmt3
          end

when ���ɾ������Ϥ��ξ嵭 if ʸ�˽�ľ��������Ʊ���Ǥ����Ĥޤ��
������(�����ƺ�������) === ��ɾ������ޤ����ޤ��ּ�0�פ�1�����ɾ
������ޤ���

when ��κǸ�μ��� `*' �����֤���Ф��μ�������Ÿ������ޤ���

        ary = [1,2,3]

        case v
        when *ary
         ..
        end

�ϡ�

        case v
        when 1, 2, 3
         ..
        end

�������Ǥ���

�ޤ� === ���ɤΤ褦�ʾ��ǿ��ˤʤ뤫�ϡ��ƥ��饹�� === �᥽��
�ɤ�ư��ˤĤ��ƤΥɥ�����Ȥ򻲾Ȥ��Ʋ�������

case �Ρּ��פ��ά������硢when �ξ�Ｐ�����Ǥʤ��ǽ��
����ɾ�����ޤ���

        foo = false
        bar = true
        quu = false

        case
        when foo then puts 'foo is true'
        when bar then puts 'bar is true'
        when quu then puts 'quu is true'
        end
        # "bar is true"��ɽ�������

case �ϡ���郎��Ω���� when �ᡢ(���뤤�� else ��)
�κǸ��ɾ���������η�̤��֤��ޤ���������ξ�������Ω���ʤ����
nil ���֤��ޤ���

== �����֤�

=== while

��:

          ary = [0,2,4,8,16,32,64,128,256,512,1024]
          i = 0
          while i < ary.length
            print ary[i]
            i += 1
          end

ʸˡ:

          while �� [do]
             ...
          end

����ɾ�������ͤ����δ֡����Τ򷫤��֤��¹Ԥ��ޤ���
while ���ͤ��֤��ޤ���

((<ruby 1.7 feature>)): while �� nil ���֤��ޤ����ޤ�����
����ȼ�ä� break �ˤ�� while ��������ͤ򤽤��ͤˤ��뤳��
��Ǥ��ޤ���

=== while ������

��:
          sleep(60) while io_not_ready?

ʸˡ:

          �� while ��

���դμ���ɾ�������ͤ����δ֡����դ򷫤��֤��¹Ԥ��ޤ���

���դμ��� rescue ��� ensure ���ʤ� begin �Ǥ�����ˤϡ�
�����ǽ�˰��ɾ�����Ƥ��鷫���֤��ޤ���

((<ruby 1.7 feature>)): version 1.7 �Ǥϡ�rescue/ensure �᤬���äƤ⡢
Ʊ�ͤ˲�ᤵ��ޤ���

��:
        send_request(data)
        begin
          res = get_response()
        end while res == 'Continue'

while �������������ͤ��֤��ޤ���

((<ruby 1.7 feature>)): while ������������ nil ���֤��ޤ���
�ޤ���������ȼ�ä� break �ˤ�� while ����������������ͤ�
�����ͤˤ��뤳�Ȥ�Ǥ��ޤ���

=== until

��:
          until f.eof?
            print f.gets
          end

ʸˡ:
          until �� [do]
             ...
          end

����ɾ�������ͤ����ˤʤ�ޤǡ����Τ򷫤��֤��Ƽ¹Ԥ��ޤ���
until �ϡ��ͤ��֤��ޤ���

((<ruby 1.7 feature>)): until �� nil ���֤��ޤ����ޤ�����
����ȼ�ä� break �ˤ�� until ��������ͤ򤽤��ͤˤ��뤳��
��Ǥ��ޤ���

=== until������

��:
          print(f.gets) until f.eof?

ʸˡ:
          �� until ��

���դμ���ɾ�������ͤ����ˤʤ�ޤǡ����դ򷫤��֤��Ƽ¹Ԥ���
����

���դμ��� rescue ��� ensure ���ʤ� begin �Ǥ�����ˤϡ�
�����ǽ�˰��ɾ�����Ƥ��鷫���֤��ޤ���

((<ruby 1.7 feature>)): version 1.7 �Ǥϡ�rescue/ensure �᤬���äƤ⡢
Ʊ�ͤ˲�ᤵ��ޤ�

��:
        send_request(data)
        begin
          res = get_response()
        end until res == 'OK'

until �������������ͤ��֤��ޤ���

((<ruby 1.7 feature>)): until ������������ nil ���֤��ޤ���
�ޤ���������ȼ�ä� break �ˤ�� until ����������������ͤ�
�����ͤˤ��뤳�Ȥ�Ǥ��ޤ���

=== for

��:

          for i in [1, 2, 3]
            print i*2, "\n"
          end

ʸˡ:

          for lhs ...  in �� [do]
            ��..
          end

����ɾ��������̤Υ��֥������Ȥγ����Ǥ��Ф������Τ򷫤��֤�
�Ƽ¹Ԥ��ޤ�������ϰʲ��μ��Ȥۤ������Ǥ���

          (��).each `{' `|' lhs..`|' ��.. `}'

�֤ۤܡפȤ����Τϡ�do  ...  end�ޤ���{ }�ˤ��
�֥��å��Ͽ��������������ѿ���ͭ���ϰϤ�Ƴ������Τ��Ф���
forʸ�ϥ��������ѿ��Υ������פ˱ƶ���ڤܤ��ʤ�����
�ۤʤ뤫��Ǥ���

for �ϡ�in �˻��ꤷ�����֥������Ȥ� each
�᥽�åɤ�����ͤ��֤��ޤ���

ʣ���Υ롼���ѿ�����ϰʲ��Τ褦�ʾ��˻��Ѥ��ޤ���

        for i,j in [[1,2], [3,4], [5,6]]
          p [i,j]
        end
        => [1, 2]
           [3, 4]
           [5, 6]

for �� each ���������Ǥ�ʣ���Ĥ��ļ������ʤ���롼�פ��뤳�Ȥ�
�Ǥ��ޤ���

        for i,j in [1, 2, 3]
          p [i,j]
        end

        => [1, nil]
           [2, nil]
           [3, nil]

        # [1,2] [3,nil] ����Ԥ��뤫�⤷��ʤ��������Ϥʤ�ʤ�

����ˤ��Τ褦�ʥ᥽�å�(���ƥ졼��)���������ɬ�פ�����ޤ���
[[m:Array#each]] ����⻲�Ȥ��Ƥ���������

        class Array
          def each2
            i = 0
            while i < self.size
              yield self[i], self[i+1]
              i += 2
            end
          end
        end

=== break

��:

          i = 0
          while i < 3
            print i, "\n"
            break
          end

ʸˡ:

          break

          break val             ruby 1.7 feature

break �Ϥ�äȤ���¦�Υ롼�פ�æ�Ф��ޤ����롼�פȤ�

    * while
    * until
    * for
    * ���ƥ졼��

�Τ����줫��ؤ��ޤ���C ����Ȱۤʤꡢbreak �ϥ롼�פ�æ�Ф����
�Ѥ����������case ��ȴ������Ѥϻ����ޤ���

break �ˤ��롼�פ�ȴ���� for �䥤�ƥ졼���� nil
���֤��ޤ���((<ruby 1.7 feature>)): ����������������ꤷ�����ϥ롼��
������ͤϤ��ΰ����ˤʤ�ޤ���

=== next

��:
          # ���Ԥ�ΤƤ�cat
          ARGF.each_line do |line|
            next if line.strip.empty?
            print line
          end

ʸˡ:

          next

          next val              ruby 1.7 feature

next�Ϥ�äȤ���¦�Υ롼�פμ��η����֤��˥����פ��ޤ���
[[unknown:�᥽�åɸƤӽФ�/���ƥ졼��]]�Ǥϡ�[[unknown:�᥽�åɸƤӽФ�/yield]] �ƤӽФ�
��æ�Фˤʤ�ޤ���

next �ˤ��ȴ���� yield ���� nil ���֤��ޤ���
((<ruby 1.7 feature>)): ����������������ꤷ����硢yield ������
���ͤϤ��ΰ����ˤʤ�ޤ���

=== redo

��:

          redo

ʸˡ:

          redo

�롼�׾��Υ����å���Ԥʤ鷺�����ߤη����֤�����ľ���ޤ���

=== retry

��:

          retry

ʸˡ:

          retry

���ƥ졼�����֥��å��ޤ���forʸ����ǻȤ�줿���ˤϡ����Υ��ƥ졼��
��ư���ʤ����ޤ������ƥ졼���ΰ������ɾ������ޤ���

          for i in 1..5
            retry if some_condition # i == 1 ������ľ��
          end

          # �桼������� "until�롼��"
          def UNTIL(cond)
            return if cond
            yield
            retry
          end

retry �ϡ��롼�װʳ��˸�Ҥ� rescue ��Ǥ�Ȥ��ޤ������ξ�
��ϡ�begin ����Ϥᤫ��⤦���ټ¹Ԥ��ޤ���retry ��Ȥ���
�ȤǤ����������������ޤǽ����򷫤��֤��褦�ʥ롼�פ��뤳�Ȥ��Ǥ��ޤ���

          begin
            do_something # exception raised
          rescue
            # handles error
            retry  # restart from beginning
          end

rescue ��䥤�ƥ졼���֥��å���for ʸ�ʳ��� retry ���Ѥ�
��줿���ˤ��㳰 [[c:LocalJumpError]] ��ȯ�����ޤ���
((-���뤤�ϡ��������顼�ˤʤäƥ��󥿥ץ꥿����λ���ޤ���
retry #=> -:1: retry outside of rescue clause-))

���ƥ졼���ƤӽФ��ˤ����� break, next, redo,
retry ��ޤȤ��Ȱʲ��Τ褦�ˤʤ�ޤ���

        def iter
         (a)
          :
         (b)
         yield
         (c)
          :
         (d)
        end
        iter { retry }   -> (a) ������
        iter { redo  }   -> (b) ������
        iter { next  }   -> (c) ������
        iter { break }   -> (d) ������

(a) �ϡ���̩�ˤϰ���ɾ������Ϥޤ�ޤ���(b) �ϥ֥��å��¹Ԥ�ľ����ؤ�
�Ƥ��ޤ�(yield �ΰ�������ɾ�������櫓�ǤϤʤ�)��(d) �ϡ��᥽�åɤν�
λ�Ǥ���

        def iter(var = p("(a)"))
          p " : "
          yield
          p "(c)"
          p " : "
        ensure
          p "(d)"
        end

        iter { p "(b)"; retry }     # => (a) .. (b)(d)(a) .. (b)(d)(a) ...
        iter { p "(b)"; redo  }     # => (a) .. (b)(b)(b)(b) ...
        iter { p "(b)"; next  }     # => (a) .. (b)(c) .. (d)
        iter { p "(b)"; break }     # => (a)..(b)(d)

((-���餤 2002-01-13: ensure �����æ�Ф���ޤ���Τ� retry �� (d)
������Ǥ��뤢�ޤ��ɤ��㤸��ʤ���-))

== �㳰����

=== raise

��:

          raise "you lose"  # �㳰 RuntimeError ��ȯ��������
          # �ʲ�����Ĥ� SyntaxError ��ȯ��������
          raise SyntaxError, "invalid syntax"
          raise SyntaxError.new("invalid syntax")
          raise             # �Ǹ���㳰�κ�ȯ��

ʸˡ:

          raise
          raise message�ޤ���exception
          raise error_type, message
          raise error_type, message, traceback

�㳰��ȯ�������ޤ������η����Ǥ�ľ�����㳰���ȯ�������ޤ���
����η����Ǥϡ�������ʸ����Ǥ��ä���硢����ʸ������å���
���Ȥ��� [[c:RuntimeError]] �㳰��ȯ�������ޤ����������㳰
���֥������ȤǤ��ä����ˤϤ����㳰��ȯ�������ޤ����軰�η���
�Ǥ��������ǻ��ꤵ�줿�㳰������������å������Ȥ���ȯ����
���ޤ�����ͤη������軰������
[[m:$@]]�ޤ���
[[m:Kernel.#caller]]��������
�����å�����ǡ��㳰��ȯ���������򼨤��ޤ���

ȯ�������㳰�ϸ�Ҥ� begin ���� rescue �����館�뤳�Ȥ��Ǥ��ޤ���
���ξ�� rescue error_type => var �η�����Ȥ���
�㳰���֥������Ȥ������ޤ������Υ��֥������Ȥ��Ȥ߹���
�ѿ� [[m:$!]] �Ǥ������ޤ����ޤ��㳰��
ȯ�����������������ɾ�ΰ��֤��ѿ� [[m:$@]] �˳�Ǽ����ޤ���

[[m:Kernel.#raise]] �� Ruby ��ͽ���ǤϤʤ���[[c:Kernel]] �⥸�塼���
�������Ƥ���ؿ�Ū�᥽�åɤǤ���

=== begin

��:

          begin
            do_something
          rescue
            recover
          ensure
            must_to_do
          end

ʸˡ:

          begin
            ��..
          [rescue [error_type,..] [=> evar] [then]
            ��..]..
          [else
            ��..]
          [ensure
            ��..]
          end

���Τμ¹�����㳰��ȯ��������硢rescue ��(ʣ������Ǥ��ޤ�)��
Ϳ�����Ƥ�����㳰����ª�Ǥ��ޤ���ȯ�������㳰�Ȱ��פ���
rescue �᤬¸�ߤ�����ˤ� rescue ������Τ��¹Ԥ���ޤ���
ȯ�������㳰�� [[m:$!]] ��Ȥäƻ��Ȥ��뤳�Ȥ��Ǥ��ޤ����ޤ���
���ꤵ��Ƥ�����ѿ� evar �ˤ� $! ��Ʊ�ͤ�ȯ�������㳰����
Ǽ����ޤ���

        begin
          raise "error message"
        rescue => evar
          p $!
          p evar
        end
        # => #<RuntimeError: error message>
             #<RuntimeError: error message>

�㳰�ΰ���Ƚ����㳰�Υ��饹�� rescue ��ǻ��ꤷ�����饹��Ʊ����
�ޤ��ϥ��֥��饹�Ǥ��뤫�ɤ��� [[m:Object#kind_of?]] ���Ѥ���Ƚ
�ꤵ��ޤ�((-((<ruby 1.7 feature>)): 1.7 �Ǥ��㳰�ΰ���Ƚ���
[[m:Module#===]] ���Ѥ��ƹԤ��ޤ�-))��

error_type ����ά���줿���� [[c:StandardError]] �Υ��֥��饹�Ǥ�
�����Ƥ��㳰����ª���ޤ���Ruby���Ȥ߹����㳰��([[c:SystemExit]] ��
[[c:Interrupt]] �Τ褦��æ�Ф���Ū�Ȥ�����Τ������)
[[c:StandardError]] �Υ��֥��饹�Ǥ���

�㳰���饹�Υ��饹���ؤˤĤ��Ƥ�
[[unknown:�Ȥ߹��ߥ��饹���⥸�塼�롿�㳰���饹/�㳰���饹]]
�򻲾Ȥ��Ƥ���������

rescue �Ǥ� error_type ���̾�ΰ�����Ʊ���褦��ɾ�����졢
���Τ����줫�����פ�������Τ��¹Ԥ���ޤ���error_type ��ɾ����
���ͤ����饹��⥸�塼��Ǥʤ����ˤ��㳰 [[c:TypeError]] ��ȯ������
����

��ά��ǽ�� else ��ϡ����Τμ¹Ԥˤ�ä��㳰��ȯ�����ʤ��ä����
��ɾ������ޤ���

ensure �᤬¸�ߤ������ begin ����λ����ľ����ɬ��
ensure ������Τ�ɾ�����ޤ���

begin�����Τ�ɾ���ͤϡ����Ρ�rescue�᡿else��Τ���
�Ǹ��ɾ�����줿ʸ���ͤǤ����ޤ�����ˤ�����ʸ��¸�ߤ��ʤ��ä��Ȥ�����
��nil�Ǥ���������ˤ��Ƥ�ensure����ͤ�̵�뤵��ޤ���

=== rescue������

��:
          open("nonexistent file") rescue STDERR.puts "Warning: #$!"

ʸˡ:

          ��1 rescue ��2

��1���㳰��ȯ�������Ȥ�����2��ɾ�����ޤ���
�ʲ���Ʊ����̣�Ǥ�����ª�����㳰���饹����ꤹ�뤳�ȤϤǤ��ޤ���
(�Ĥޤꡢ[[c:StandardError]] �㳰���饹�Υ��֥��饹����������ª�Ǥ��ޤ���)

          begin
            ��1
          rescue
            ��2
          end

rescue�����Ҥ�ȼ�������ͤ��㳰��ȯ�����ʤ���м�1���㳰��ȯ������м�2
�Ǥ���������������ξ�硢ͥ���̤��Թ�ˤ�꼰���Τ��̤ǰϤ�ɬ�פ�
����ޤ���

          var = open("nonexistent file") rescue false
          p var
          => nil      # �ͤ�����ʤ��ѿ� var ��������줿����

          var = (open("nonexistent file") rescue false)
          p var
          => false

�ä˥᥽�åɤΰ������Ϥ�������Ť˳�̤�ɬ�פȤʤ�ޤ���

          p(open("nonexistent file") rescue false)
          => parse error

          p((open("nonexistent file") rescue false))
          => false

((<ruby 1.7 feature>)): 1.7 �Ǥϡ�rescue ��ͥ���٤��ѹ����졢
���ο��ۤϤʤ��ʤäƤ��ޤ���

          var = open("nonexistent file") rescue false
          p var
          => false

          p(open("nonexistent file") rescue false)
          => false

== ����¾

=== return

��:

          return
          return 12
          return 1,2,3

ʸˡ:

          return [��[`,' �� ... ]]

�����ͤ�����ͤȤ��ƥ᥽�åɤμ¹Ԥ�λ���ޤ�������2�İʾ�
Ϳ����줿���ˤϡ����������ǤȤ��������᥽�åɤ�����ͤ�
���ޤ���������ά���줿���ˤ� nil ������ͤȤ��ޤ���

=== BEGIN

��:

          BEGIN {
             ...
          }

ʸˡ:

          BEGIN '{' ʸ.. '}'

������롼�������Ͽ���ޤ���BEGIN�֥��å��ǻ��ꤷ��ʸ�������ե�
����Τɤ�ʸ���¹Ԥ���������˼¹Ԥ���ޤ���ʣ����BEGIN������
���줿���ˤϻ��ꤵ�줿��˼¹Ԥ���ޤ���

BEGIN�֥��å��ϥ���ѥ��������Ͽ����ޤ���¨����Ĥε��ҤˤĤ�
������������Ͽ���Ԥ��ޤ���

        if false
          BEGIN { p "begin" }
        end

        # => "begin"

BEGIN�֥��å�����Ω�������������ѿ��Υ������פ�Ƴ�����뤿�ᡢ����
�����ѿ������ȶ�ͭ�Ǥ��ޤ��󡣥֥��å��γ��Ⱦ������ã����ˤ������
�������Х��ѿ��ʤɤ�𤹤�ɬ�פ�����ޤ���

        BEGIN { $foo, foo = true, true }
        p $foo  # => true
        p foo   # undefined local variable or method `foo' for main:Object (NameError)

BEGIN�ϥ᥽�å��������ˤϽ񤱤ޤ���parse error �ˤʤ�ޤ���

        def foo
          BEGIN { p "begin" }
        end
        # => -:2: BEGIN in method

=== END

��:

          END {
             ...
          }

ʸˡ:

          END '{' ʸ.. '}'

�ָ�����ץ롼�������Ͽ���ޤ���END �֥��å��ǻ��ꤷ��ʸ�ϥ���
�ץ꥿����λ������˼¹Ԥ���ޤ���Ruby �ν�λ�������ˤĤ��ƾܤ�����
[[unknown:��λ����]]�򻲾Ȥ��Ƥ���������

ʣ���� END �֥��å�����Ͽ�������ϡ���Ͽ�����Ȥ��ȵդν���Ǽ�
�Ԥ���ޤ���

        END { p 1 }
        END { p 2 }
        END { p 3 }

        # => 3
             2
             1

END �֥��å��ϰ�Ĥε��ҤˤĤ��ǽ�ΰ��Τ�ͭ���Ǥ������Ȥ��а�
���Τ褦�˥롼�פ���Ǽ¹Ԥ��Ƥ�ʣ���� END �֥��å�����Ͽ�����
�櫓�ǤϤ���ޤ��󡣤��Τ褦����Ū�ˤ� [[m:Kernel.#at_exit]] ���
���ޤ���

        5.times do |i|
          END { p i }
        end
        # => 0

END ��᥽�å��������˽񤯤ȷٹ𤬽Фޤ�
((-((<ruby 1.8 feature>)): ����� 1.8.1 ���� [[unknown:ruby-dev:21513]]-))��
�տ�Ū�ˤ��Τ褦�ʤ��Ȥ�Ԥ��������� [[m:Kernel.#at_exit]] ���
���ޤ���

        def foo
          END { p "end" }
        end
        p foo

        # => -:2: warning: END in method; use at_exit
             nil
             "end"

END �ϡ�BEGIN �Ȥϰۤʤ�¹Ի��˸��������Ͽ���ޤ�����������
�ơ��ʲ�����Ǥ� END �֥��å��ϼ¹Ԥ���ޤ���

        if false
          END { p "end" }
        end

END �� [[m:Kernel.#at_exit]] ����Ͽ�������������ä�����
�ϤǤ��ޤ���

END �֥��å��� BEGIN �֥��å��Ȥϰۤʤ���Ϥȥ������פ�ͭ��
�ޤ������ʤ�����ƥ졼����Ʊ�ͤΥ������פ�����ޤ���

END �֥��å������ȯ�������㳰�Ϥ��� END �֥��å������Ǥ�
�ޤ��������٤Ƥθ�����롼���󤬼¹Ԥ����褦�����󥿥ץ꥿�Ͻ�λ����
�˥�å�������������Ϥ��ޤ���

��:

        END { p "FOO" }
        END { raise "bar"; p "BAR" }
        END { raise "baz"; p "BAZ" }

        => baz (RuntimeError)
           bar (RuntimeError)
           "FOO"