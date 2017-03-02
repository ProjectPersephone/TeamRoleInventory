<HTML>

<BODY aLink=#ff8000 bgColor=white link=#0000a0 text=#000000 vLink=#c00000>
<FORM action=http://www.idiom.com/~turner/t.cgi method=get>
<center><IMG SRC="leap1.bmp"></center>

<SCRIPT LANGUAGE="Javascript">

// HTML generator functions:

function ht(t) { return "<"+t+">"; }
function het(t) { return ht("/"+t); }
function hg(t,s) { return ht(t)+s+het(t); }

function hData(d)  { return hg("TD",d); }
function hRow (r)  { return hg("TR",r); }
function hHdr(h)   { return hg("TH",h); }
function hPara(s)  { return hg("P",s);  }
function hStrong(t){ return hg("STRONG",t); }
function hCenter(t){ return hg("CENTER",t); }
function hH1(t)    { return hg("H1",t); }
function hH2(t)    { return hg("H2",t); }
function hTitle(t) { return hg("TITLE",t); }
function hInput(v, init, spec)
{
  return ht("INPUT name="+v + " value="+init + " "+spec);
}

function hTable(t, spec)
{
  return ht("TABLE "+spec)+hg("TBODY",t)+het("TABLE");
}

// app-specific Q/A data

var R = new Array();

ch="CH";
sh="SH";
me="ME";
ri="RI";
pl="PL";
tw="TW";
cw="CW";
cf="CF";

He = "Collaborative Skills Inventory";
Hj = "�x�[���r��";

Ee = "For each of the seven sections, distribute a total of ten points between possible responses according to how you consider they best fit your own behavior.  The ten points can be distributed evenly, or perhaps all given to one response.  Enter the points at the side.";

Ej = "���̊e���ڂ�ǂ�ŉ������B����͋�����Ƃ������ł̎��Ȑf�f���ł��B���`���܂ł̊e���ڂɂ��āA�K���̓x���������v�P�O�_�ƂȂ�悤�Ɏ��ȃ`�F�b�N���ĉ������B�ł��_���̍������ڂ͂ǂ�ł����B�܂��A�ł��_���̒Ⴂ���ڂ͂ǂ�ł����B�S�����Ă͂܂�Ȃ��Ǝv�������ڂ͂O�_�ł��\���܂���B�P���ڂ݂̂P�O�_�ő��͂O�_�Ƃ��Ă��\���܂��񂪁A���̏ꍇ�͓��ɁA������������Ă��Ȃ����ȂǁA�悭�l������ōs���ĉ������B ";

R = [ch, sh, me, ri, pl, tw, cw, cf];

var Qe = new Array();
var Qj = new Array();
var Ae = new Array();
var Aj = new Array();

Qe[1]="What I believe I can contribute to a team:";
Qj[1]="�����̓`�[���ɑ΂��Ď��̓_�Ŗ��ɗ��Ǝv���B";
 Ae[1] = new Array();
 Aj[1] = new Array();

 Ae[1][ch]="My ability rests in being able to draw people out when I detect something that can be contributed valuably to group activities.";
 Aj[1][ch]="�`�[���ɍv���ł���B�ꂽ�\�͂𑼂̐l�Ɍ��o���āA����������o���̂����ӂł���B";

 Ae[1][sh]="I am ready to face temporary unpopularity if it leads to worthwhile results in the end.";
 Aj[1][sh]="�ǂ����ʂ𐶂ݏo�����߂Ȃ�A�ꎞ�I�ɕs�]�𔃂��Ăł�o�傪����B �i �ꎞ�I�ȕs�]�ɑς���o�傪����B�j";

 Ae[1][me]="I can offer a reasoned case for alternative courses of action without introducing bias or prejudice.";
 Aj[1][me]="�Ό�������A�����ɂ��Ȃ�����Ă��Ă��Đl��[��������̂����ӂł���B";

 Ae[1][ri]="I think I can quickly see and take advantage of new opportunities.";
 Aj[1][ri]="�V���ȏ󋵂𑦍��Ɏ@�m���āA���p����\�͂�����B";

 Ae[1][pl]="Producing ideas is one of my natural assets.";
 Aj[1][pl]="�V�����A�C�f�A�𐶂ݏo���̂����ӂł���B";

 Ae[1][tw]="I can work well with a wide range of people.";
 Aj[1][tw]="�N�Ƃł����ɓ������Ƃ��ł���B";

 Ae[1][cw]="I can usually sense what is realistic and likely to work.";
 Aj[1][cw]="���������\�����@�m����\�͂ɏG�łĂ���B";

 Ae[1][cf]="My capacity to follow through with projects has much to do with my personal effectiveness.";
 Aj[1][cf]="��x�n�߂���Ƃ͕K���Ō�܂ł�萋���鎿(����)�ł���B ";

Qe[2]="If I have a shortcoming in team work, it could be:";
Qj[2]="�����Ƀ`�[�����[�N��̌��_������Ƃ���΁A����͈ȉ��̓_�ɂ����Ăł���B";
 Ae[2]= new Array();
 Aj[2]= new Array();

 Ae[2][ch]="I am inclined to be generous towards others who have a valid viewpoint that has not been given a proper airing.";
 Aj[2][ch]="��l�ɒl���邪�����Ă��炦�Ȃ������ӌ��̎�����ɑ΂��ē��������B�i��荇���Ă��炦�Ȃ������ǂ��ӌ��̎�����ɑ΂��ē�������錙��������B ���@���킵�����_�̎�����̌��������߂���X��������B���@���킵���ӌ��ɂ�����邠�܂�A�v���W�F�N�g�i�s�̖W���ƂȂ邱�Ƃ�����B�����̋@���^�����Ȃ����������͂���ӌ����������l�ɂ͊���ɂȂ�X��������B�j";

 Ae[2][sh]="I am sometimes seen as forceful and authoritarian if there is a need to get something done.";
 Aj[2][sh]="�ڕW��B�����邽�߂ɕK�v�Ƃ���΁A�����ƌ����邱�Ƃ�����B";

 Ae[2][me]="My objective outlook makes it difficult for me to join in with colleagues readily and enthusiastically.";
 Aj[2][me]="���߂����̌������Ђ����āA���Ԃ̗ւɓ���ɂ������Ƃ�����B";

 Ae[2][ri]="I have a tendency to talk too much once the group gets on to new ideas.";
 Aj[2][ri]="�V�����A�C�f�A���b��ƂȂ�ƁA���肷���錙��������B";

 Ae[2][pl]="I am apt to get caught up in ideas that occur to me, and so lose track of what is happening.";
 Aj[2][pl]="�Ђ�߂����A�C�f�B�A�ɖ����ɂȂ肷���邠�܂�A�������痣��Ă��܂����Ƃ�����B";

 Ae[2][tw]="I find it difficult to lead from the front: perhaps I am overresponsive to group atmosphere.";
 Aj[2][tw]="�`�[���̕��͋C�ɓ������߂��邹�����A�擪�ɗ����ă��[�h����̂͋��ł���B";

 Ae[2][cw]="I am not at ease unless meetings are well structured and generally well conducted.";
 Aj[2][cw]="�~�[�e�B���O�����v��Ɋ�Â��ăX���[�Y�ɐi�s���Ȃ��Ɨ��������Ȃ��B";

 Ae[2][cf]="My colleagues tend to see me as worrying unnecessarily over detail and the possibility that things may go wrong.";
 Aj[2][cf]="�ׂ����_��S�z�������A�������ւ΂���\�z����Ƃ悭������B ";

Qe[3]="When involved in a project with other people:";
Qj[3]="�`�[�����C�g�Ƌ��Ƀv���W�F�N�g�ɎQ�����鎞�A�����̒����͈ȉ��̓_�ł���B";
 Ae[3]= new Array();
 Aj[3]= new Array();

 Ae[3][ch]="I have an aptitude for influencing people without pressuring them.";
 Aj[3][ch]="�����t�����܂����Ȃ炸�ɁA�`�[�����C�g�ɉe����^���邱�Ƃ��ł���B";

 Ae[3][sh]="I am ready to press for action to make sure that the meeting does not waste time or lose sight of the main objectives.";
 Aj[3][sh]="���ʂ�E���ɏI���Ȃ��悤�Ƀ~�[�e�B���O�̗�����C�����邱�Ƃ��ł���B";

 Ae[3][me]="I believe my capacity for judgement can help to bring about right decisions.";
 Aj[3][me]="���f�͂ɂ͎��M������B";

 Ae[3][ri]="I am keen to look for the latest in new ideas and developments.";
 Aj[3][ri]="�V�����A�C�f�A�␢�̒��̏�ɕq���ł���B";

 Ae[3][pl]="I can be counted on to contribute something original.";
 Aj[3][pl]="�Ƒn���ɂ����Ă͎��M������B";

 Ae[3][tw]="I am always ready to back a good suggestion in the common interest.";
 Aj[3][tw]="�`�[���̂��߂ɂȂ��ĂȂ�A���ł��^������p�ӂ�����B";

 Ae[3][cw]="I can be relied upon to see that all essential work is organised.";
 Aj[3][cw]="�K�v�Ȏd���̂��ׂĂ����܂��s���悤�Ɏd�����邱�Ƃ��ł���B";

 Ae[3][cf]="My general vigilance prevents careless mistakes and omissions being made.";
 Aj[3][cf]="���Ӑ[�����Ȃ̂ŁA�P�A���X�~�X�〈�����𖢑R�ɖh�����Ƃ��ł���B";

Qe[4]="My characteristic approach to group work is that:";
Qj[4]="�`�[�����[�N�Ɋւ��āA�����ɓƓ��̃A�v���[�`�͈ȉ��̓_�ł���B";
 Ae[4]= new Array();
 Aj[4]= new Array();

 Ae[4][ch]="While I am interested in all views, I have no hesitation in making up my mind once a decision has to be made.";
 Aj[4][ch]="�F�X�Ȉӌ��Ɏ����X�������ŁA�K�v�Ƃ���΁A�����Ō��f�������o�傪����B";

 Ae[4][sh]="I am not reluctant to challenge the views of others, or to hold a minority view myself.";
 Aj[4][sh]="���҂̈ӌ��ɋ^��𓊂���������A�����h�ɉ�邱�Ƃ����Ƃ�Ȃ��B";

 Ae[4][me]="I can usually find a line of argument to refute unsound propositions.";
 Aj[4][me]="�s���S�Ȏ咣�A��Ă�_�j���铹�����o���̂����ӂł���B";

 Ae[4][ri]="I am ready to make use of contacts outside the job itself.";
 Aj[4][ri]="�d�����̂��̈ȊO�̐l�Ԋ֌W���I�݂ɗ��p�ł���B";

 Ae[4][pl]="I have a tendency to avoid the obvious and come out with the unexpected.";
 Aj[4][pl]="������O�̂��Ƃ͔����A�v�������Ȃ��Ă��v�����X��������B";

 Ae[4][tw]="I have a quiet interest in getting to know colleagues better.";
 Aj[4][tw]="�`�[�����C�g�̐l�ƂȂ������C�Ȃ��m�낤�Ɠw�߂Ă���B ";

 Ae[4][cw]="I think I have a talent for making things work once a plan has been put into operation.";
 Aj[4][cw]="�v������s�Ɉڂ��i�ƂȂ�΁A����𐋍s������\�͂�����B";

 Ae[4][cf]="I bring a touch of perfection to any job I undertake.";
 Aj[4][cf]="�C���ꂽ�d���͊����ɂ��鐫���ł���B";

Qe[5]="I gain satisfaction in a job because:";
Qj[5]="�d���ɖ��������o����͈̂ȉ��̗��R�ł���B";
 Ae[5]= new Array();
 Aj[5]= new Array();

 Ae[5][ch]="I can get people to agree on a necessary course of action.";
 Aj[5][ch]="�d���ɑS�͂��X���ł���B";

 Ae[5][sh]="I can have a strong influence on decisions.";
 Aj[5][sh]="���������߂�Ƃ��ɋ����e�����y�ڂ����Ƃ��ł���B";

 Ae[5][me]="I enjoy analysing situations and weighing up all the possible choices.";
 Aj[5][me]="�󋵂𕪐͂��A������I�����̌y�d���ᖡ����̂��ʔ����B";

 Ae[5][ri]="I can meet people who may have something new to offer.";
 Aj[5][ri]="�����V�������̂�񋟂ł���l�ɉ��̂��y�����B";

 Ae[5][pl]="I like to find a field that stretches my imagination.";
 Aj[5][pl]="�z���͂��������ĂĂ���镪���������̂��D���ł���B";

 Ae[5][tw]="I like to feel I am fostering good working relationships.";
 Aj[5][tw]="�d����̂悢�֌W�����ł���Ǝv���ƋC�����ǂ��B";

 Ae[5][cw]="I am interested in finding practical solutions to problems.";
 Aj[5][cw]="���ɑ΂�����ۓI�ȉ���������o�����Ƃɋ���������B";

 Ae[5][cf]="I feel in my element where I can give a task my full attention. ";
 Aj[5][cf]="�d���ɑS�͂��X���ł���B";


Qe[6]="If I were suddenly given a difficult task with limited time and unfamiliar people:";
Qj[6]="����ꂽ���ԓ��ŏ��߂ĉ�l�B�Ƌ�����Ƃ�����悤�A�}�ɋ��߂�ꂽ�Ƃ�����B";
 Ae[6]= new Array();
 Aj[6]= new Array();

 Ae[6][ch]="I would find some way of reducing the size of the task by establishing what different individuals might best contribute.";
 Aj[6][ch]="�N����������Ό��ʓI����T�邱�ƂŁA�d�������₷������悤�ɓw�߂�B";

 Ae[6][sh]="I would be prepared to take a positive lead if I felt the group was making no progress.";
 Aj[6][sh]="�O���[�v�������Ȃ��ƌ���΁A�ϋɓI�Ƀ��[�h����p�ӂ�����B";

 Ae[6][me]="I believe I would keep cool and maintain my capacity to think straight.";
 Aj[6][me]="��ɗ�ÂŁA�_���I�ɍl����͂�����Ȃ��B";

 Ae[6][ri]="I would open up discussions with a view to stimulating new thoughts and getting something moving.";
 Aj[6][ri]="�V�����l�����h�����Ď��Ԃ̐i�W���v�邽�߂̘b�������n�߂悤�Ǝv���B";

 Ae[6][pl]="I would feel like retiring to a corner to devise a way out of the impasse before developing a line.";
 Aj[6][pl]="���ʂ��Ă���󋵂̑ŊJ�����邽�߂Ɉ�l�ŐÂ��ɍl���鎞�Ԃ����������Ǝv���B";

 Ae[6][tw]="I would be ready to work with the person who showed the most positive approach.";
 Aj[6][tw]="�ł��L�]�ȃA�v���[�`���Ă����l�Ƌ��͂������Ǝv��";

 Ae[6][cw]="I would retain a steadiness of purpose in spite of the pressures.";
 Aj[6][cw]="�v���b�V���[�ɕ������ɓ����̖ړI��������Ȃ��B";

 Ae[6][cf]="My natural sense of urgency would help to ensure that we did not fall behind schedule.";
 Aj[6][cf]="���Ԃ��C�ɂ��鎿�i�����j�Ȃ̂ŁA�X�P�W���[���ɒx�ꂪ�o�Ȃ��悤�C��z�邱�Ƃ��ł���B";

Qe[7]="Thinking about the problems I have when working in groups, I can see that:";
Qj[7]="�O���[�v�����ɂ����鎩���̖��_�͎��̂悤�ȓ_�ł���B";
 Ae[7]= new Array();
 Aj[7]= new Array();

 Ae[7][ch]="I am conscious of wanting from others what I cannot do myself.";
 Aj[7][ch]="�����ɂł��Ȃ����Ƃ𑼐l�ɋ��߂邱�Ƃ�����Ǝ��o���Ă���B";

 Ae[7][sh]="I am apt to show my impatience with those who are obstructing progress.";
 Aj[7][sh]="�v��̐i�s��W���Ă���l�X�ɂ͉՗������B���Ȃ��B";

 Ae[7][me]="Others may criticise me for being too analytical and insufficiently intuitive.";
 Aj[7][me]="���̐l�͎����͕��͓I�����Ē��ϗ͂Ɍ�����ƌ��Ă���悤���B";

 Ae[7][ri]="I tend to get bored rather easily and rely on one or two stimulating members to spark me off.";
 Aj[7][ri]="�O���₷�����i�����j�Ȃ̂ŁA�`�[���̐ϋɓI�ȃ����o�[�ɉ΂����Ă��炤�̂𓖂Ăɂ���X��������B";

 Ae[7][pl]="I am sometimes poor at explaining and clarifying complex points that occur to me.";
 Aj[7][pl]="���ɕ����񂾕��G�ȍl�������Ő�������̂����ł���B";

 Ae[7][tw]="I hesitate to get my points across against real opposition.";
 Aj[7][tw]="�������΂ɉ�Ǝ����̎咣���͂����肳����̂����߂炤�B";

 Ae[7][cw]="I find difficulty starting unless the goals are clear.";
 Aj[7][cw]="�ڕW���͂����肵�Ȃ��ƂȂ��Ȃ��n�����Ȃ����i�����j�ł���B";

 Ae[7][cf]="My desire to ensure that work is properly done may hold up proceedings.";
 Aj[7][cf]="�d���̐��m���ɂ�����邠�܂�A�i�s�ɒx������������Ƃ�����B";

nqs = 7;

// generic Q/A HTML generation

function writeSPI(H,E,Q,A)
{
 document.write (hH1 (hCenter (H)));
 document.write (hH1 (hCenter (Hj)));
 document.write (hPara(E));
 document.write (hPara(Ej));
 for (i = 1; i <= nqs; ++i)
   {
   var s = hRow(hHdr("Type") + hHdr("Weight") + hHdr("Answer"));
   for (r in R)
	{
	var v = R[r]+i;
	s += hRow(hData(v)
	     + hData(hInput(v, 0, "size=2"))
	     + hData(A[i][R[r]] + "<br>" + Aj[i][R[r]]));
	}
   document.write (hPara(hStrong(Q[i] + "<br>"+Qj[i])) + hTable (s, "border=1"));
   }
}

writeSPI(He,Ee,Qe,Ae);

</SCRIPT>

<P>
<INPUT type=submit value=Evaluate>

</FORM>
</BODY>
</HTML>
