<HTML>
	
<head>
	<meta charset="utf-8" /> 
</head>

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
Hj = "ベールビン";

Ee = "For each of the seven sections, distribute a total of ten points between possible responses according to how you consider they best fit your own behavior.  The ten points can be distributed evenly, or perhaps all given to one response.  Enter the points at the side.";

Ej = "下の各項目を読んで下さい。これは共同作業をする上での自己診断書です。ａ～ｈまでの各項目について、適性の度合いを合計１０点となるように自己チェックして下さい。最も点数の高い項目はどれですか。また、最も点数の低い項目はどれですか。全く当てはまらないと思った項目は０点でも構いません。１項目のみ１０点で他は０点としても構いませんが、その場合は特に、判定基準を誤解していないかなど、よく考えた上で行って下さい。 ";

R = [ch, sh, me, ri, pl, tw, cw, cf];

var Qe = new Array();
var Qj = new Array();
var Ae = new Array();
var Aj = new Array();

Qe[1]="What I believe I can contribute to a team:";
Qj[1]="自分はチームに対して次の点で役に立つと思う。";
 Ae[1] = new Array();
 Aj[1] = new Array();

 Ae[1][ch]="My ability rests in being able to draw people out when I detect something that can be contributed valuably to group activities.";
 Aj[1][ch]="チームに貢献できる隠れた能力を他の人に見出して、それを引き出すのが得意である。";

 Ae[1][sh]="I am ready to face temporary unpopularity if it leads to worthwhile results in the end.";
 Aj[1][sh]="良い結果を生み出すためなら、一時的に不評を買ってでる覚悟がある。 （ 一時的な不評に耐える覚悟がある。）";

 Ae[1][me]="I can offer a reasoned case for alternative courses of action without introducing bias or prejudice.";
 Aj[1][me]="偏見を避け、道理にかなった代案を提案して人を納得させるのが得意である。";

 Ae[1][ri]="I think I can quickly see and take advantage of new opportunities.";
 Aj[1][ri]="新たな状況を即座に察知して、活用する能力がある。";

 Ae[1][pl]="Producing ideas is one of my natural assets.";
 Aj[1][pl]="新しいアイデアを生み出すのが得意である。";

 Ae[1][tw]="I can work well with a wide range of people.";
 Aj[1][tw]="誰とでも共に働くことができる。";

 Ae[1][cw]="I can usually sense what is realistic and likely to work.";
 Aj[1][cw]="何が実現可能かを察知する能力に秀でている。";

 Ae[1][cf]="My capacity to follow through with projects has much to do with my personal effectiveness.";
 Aj[1][cf]="一度始めた作業は必ず最後までやり遂げる質(たち)である。 ";

Qe[2]="If I have a shortcoming in team work, it could be:";
Qj[2]="自分にチームワーク上の欠点があるとすれば、それは以下の点においてである。";
 Ae[2]= new Array();
 Aj[2]= new Array();

 Ae[2][ch]="I am inclined to be generous towards others who have a valid viewpoint that has not been given a proper airing.";
 Aj[2][ch]="一考に値するが聞いてもらえなかった意見の持ち主に対して同情しすぎる。（取り合ってもらえなかった良い意見の持ち主に対して同情しすぎる嫌いがある。 時機を逸した正論の持ち主の肩を持ち過ぎる傾向がある。時機を逸した意見にこだわるあまり、プロジェクト進行の妨げとなることがある。発言の機会を与えられなかった説得力ある意見を持った人には寛大になる傾向がある。）";

 Ae[2][sh]="I am sometimes seen as forceful and authoritarian if there is a need to get something done.";
 Aj[2][sh]="目標を達成するために必要とあれば、強引と見られることがある。";

 Ae[2][me]="My objective outlook makes it difficult for me to join in with colleagues readily and enthusiastically.";
 Aj[2][me]="醒めた物の見方が災いして、仲間の輪に入りにくいことがある。";

 Ae[2][ri]="I have a tendency to talk too much once the group gets on to new ideas.";
 Aj[2][ri]="新しいアイデアが話題となると、喋りすぎる嫌いがある。";

 Ae[2][pl]="I am apt to get caught up in ideas that occur to me, and so lose track of what is happening.";
 Aj[2][pl]="ひらめいたアイディアに夢中になりすぎるあまり、現実から離れてしまうことがある。";

 Ae[2][tw]="I find it difficult to lead from the front: perhaps I am overresponsive to group atmosphere.";
 Aj[2][tw]="チームの雰囲気に同調し過ぎるせいか、先頭に立ってリードするのは苦手である。";

 Ae[2][cw]="I am not at ease unless meetings are well structured and generally well conducted.";
 Aj[2][cw]="ミーティング等が計画に基づいてスムーズに進行しないと落ち着かない。";

 Ae[2][cf]="My colleagues tend to see me as worrying unnecessarily over detail and the possibility that things may go wrong.";
 Aj[2][cf]="細かい点を心配しすぎ、悪い方へばかり予想するとよく言われる。 ";

Qe[3]="When involved in a project with other people:";
Qj[3]="チームメイトと共にプロジェクトに参加する時、自分の長所は以下の点である。";
 Ae[3]= new Array();
 Aj[3]= new Array();

 Ae[3][ch]="I have an aptitude for influencing people without pressuring them.";
 Aj[3][ch]="押し付けがましくならずに、チームメイトに影響を与えることができる。";

 Ae[3][sh]="I am ready to press for action to make sure that the meeting does not waste time or lose sight of the main objectives.";
 Aj[3][sh]="無駄や脱線に終わらないようにミーティングの流れを修正することができる。";

 Ae[3][me]="I believe my capacity for judgement can help to bring about right decisions.";
 Aj[3][me]="判断力には自信がある。";

 Ae[3][ri]="I am keen to look for the latest in new ideas and developments.";
 Aj[3][ri]="新しいアイデアや世の中の情勢に敏感である。";

 Ae[3][pl]="I can be counted on to contribute something original.";
 Aj[3][pl]="独創性にかけては自信がある。";

 Ae[3][tw]="I am always ready to back a good suggestion in the common interest.";
 Aj[3][tw]="チームのためになる提案なら、いつでも賛成する用意がある。";

 Ae[3][cw]="I can be relied upon to see that all essential work is organised.";
 Aj[3][cw]="必要な仕事のすべてがうまく行くように仕向けることができる。";

 Ae[3][cf]="My general vigilance prevents careless mistakes and omissions being made.";
 Aj[3][cf]="注意深い方なので、ケアレスミスや見逃しを未然に防ぐことができる。";

Qe[4]="My characteristic approach to group work is that:";
Qj[4]="チームワークに関して、自分に独特のアプローチは以下の点である。";
 Ae[4]= new Array();
 Aj[4]= new Array();

 Ae[4][ch]="While I am interested in all views, I have no hesitation in making up my mind once a decision has to be made.";
 Aj[4][ch]="色々な意見に耳を傾ける一方で、必要とあれば、自分で決断を下す覚悟がある。";

 Ae[4][sh]="I am not reluctant to challenge the views of others, or to hold a minority view myself.";
 Aj[4][sh]="他者の意見に疑問を投げかけたり、少数派に回ることをいとわない。";

 Ae[4][me]="I can usually find a line of argument to refute unsound propositions.";
 Aj[4][me]="不健全な主張、提案を論破する道を見出すのが得意である。";

 Ae[4][ri]="I am ready to make use of contacts outside the job itself.";
 Aj[4][ri]="仕事そのもの以外の人間関係を巧みに利用できる。";

 Ae[4][pl]="I have a tendency to avoid the obvious and come out with the unexpected.";
 Aj[4][pl]="当たり前のことは避け、思いがけない案を思いつく傾向がある。";

 Ae[4][tw]="I have a quiet interest in getting to know colleagues better.";
 Aj[4][tw]="チームメイトの人となりをさり気なく知ろうと努めている。 ";

 Ae[4][cw]="I think I have a talent for making things work once a plan has been put into operation.";
 Aj[4][cw]="計画を実行に移す段となれば、それを遂行させる能力がある。";

 Ae[4][cf]="I bring a touch of perfection to any job I undertake.";
 Aj[4][cf]="任された仕事は完璧にする性分である。";

Qe[5]="I gain satisfaction in a job because:";
Qj[5]="仕事に満足感を覚えるのは以下の理由である。";
 Ae[5]= new Array();
 Aj[5]= new Array();

 Ae[5][ch]="I can get people to agree on a necessary course of action.";
 Aj[5][ch]="仕事に全力を傾注できる。";

 Ae[5][sh]="I can have a strong influence on decisions.";
 Aj[5][sh]="物事を決めるときに強い影響を及ぼすことができる。";

 Ae[5][me]="I enjoy analysing situations and weighing up all the possible choices.";
 Aj[5][me]="状況を分析し、あらゆる選択肢の軽重を吟味するのが面白い。";

 Ae[5][ri]="I can meet people who may have something new to offer.";
 Aj[5][ri]="何か新しいものを提供できる人に会えるのが楽しい。";

 Ae[5][pl]="I like to find a field that stretches my imagination.";
 Aj[5][pl]="想像力をかきたててくれる分野を見つけるのが好きである。";

 Ae[5][tw]="I like to feel I am fostering good working relationships.";
 Aj[5][tw]="仕事上のよい関係を育んでいると思うと気分が良い。";

 Ae[5][cw]="I am interested in finding practical solutions to problems.";
 Aj[5][cw]="問題に対する実際的な解決策を見出すことに興味がある。";

 Ae[5][cf]="I feel in my element where I can give a task my full attention. ";
 Aj[5][cf]="仕事に全力を傾注できる。";


Qe[6]="If I were suddenly given a difficult task with limited time and unfamiliar people:";
Qj[6]="限られた時間内で初めて会う人達と共同作業をするよう、急に求められたとしたら。";
 Ae[6]= new Array();
 Aj[6]= new Array();

 Ae[6][ch]="I would find some way of reducing the size of the task by establishing what different individuals might best contribute.";
 Aj[6][ch]="誰が何をすれば効果的かを探ることで、仕事をやりやすくするように努める。";

 Ae[6][sh]="I would be prepared to take a positive lead if I felt the group was making no progress.";
 Aj[6][sh]="グループが動かないと見れば、積極的にリードする用意がある。";

 Ae[6][me]="I believe I would keep cool and maintain my capacity to think straight.";
 Aj[6][me]="常に冷静で、論理的に考える力を失わない。";

 Ae[6][ri]="I would open up discussions with a view to stimulating new thoughts and getting something moving.";
 Aj[6][ri]="新しい考えを刺激して事態の進展を計るための話合いを始めようと思う。";

 Ae[6][pl]="I would feel like retiring to a corner to devise a way out of the impasse before developing a line.";
 Aj[6][pl]="直面している状況の打開策を練るために一人で静かに考える時間を持ちたいと思う。";

 Ae[6][tw]="I would be ready to work with the person who showed the most positive approach.";
 Aj[6][tw]="最も有望なアプローチを提案した人と協力したいと思う";

 Ae[6][cw]="I would retain a steadiness of purpose in spite of the pressures.";
 Aj[6][cw]="プレッシャーに負けずに当初の目的を見失わない。";

 Ae[6][cf]="My natural sense of urgency would help to ensure that we did not fall behind schedule.";
 Aj[6][cf]="時間を気にする質（たち）なので、スケジュールに遅れが出ないよう気を配ることができる。";

Qe[7]="Thinking about the problems I have when working in groups, I can see that:";
Qj[7]="グループ活動における自分の問題点は次のような点である。";
 Ae[7]= new Array();
 Aj[7]= new Array();

 Ae[7][ch]="I am conscious of wanting from others what I cannot do myself.";
 Aj[7][ch]="自分にできないことを他人に求めることがあると自覚している。";

 Ae[7][sh]="I am apt to show my impatience with those who are obstructing progress.";
 Aj[7][sh]="計画の進行を妨げている人々には苛立ちを隠せない。";

 Ae[7][me]="Others may criticise me for being too analytical and insufficiently intuitive.";
 Aj[7][me]="他の人は自分は分析的すぎて直観力に欠けると見ているようだ。";

 Ae[7][ri]="I tend to get bored rather easily and rely on one or two stimulating members to spark me off.";
 Aj[7][ri]="飽きやすい質（たち）なので、チームの積極的なメンバーに火をつけてもらうのを当てにする傾向がある。";

 Ae[7][pl]="I am sometimes poor at explaining and clarifying complex points that occur to me.";
 Aj[7][pl]="頭に浮かんだ複雑な考えを口で説明するのが苦手である。";

 Ae[7][tw]="I hesitate to get my points across against real opposition.";
 Aj[7][tw]="強い反対に会うと自分の主張をはっきりさせるのをためらう。";

 Ae[7][cw]="I find difficulty starting unless the goals are clear.";
 Aj[7][cw]="目標がはっきりしないとなかなか始動しない質（たち）である。";

 Ae[7][cf]="My desire to ensure that work is properly done may hold up proceedings.";
 Aj[7][cf]="仕事の正確さにこだわるあまり、進行に遅れをきたすことがある。";

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
