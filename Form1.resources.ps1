﻿& { $BinaryFormatter = New-Object -TypeName System.Runtime.Serialization.Formatters.Binary.BinaryFormatter
@{
'$this.Icon' = New-Object -TypeName System.Drawing.Icon -ArgumentList @(New-Object -TypeName  System.IO.MemoryStream -ArgumentList @(,[System.Convert]::FromBase64String('AAABAAEAICAAAAEAIACoEAAAFgAAACgAAAAgAAAAQAAAAAEAIAAAAAAAABAAABILAAASCwAAAAAAAAAAAAD+/v7///////b29v/s7Oz/8PDw//39/f//////9fX1/+zs7P/x8fH//v7+///////09PT/7Ozs//Ly8v/+/v7///////Ly8v/s7Oz/8/Pz///////+/v7/8fHx/+zs7P/09PT///////7+/v/x8fH/7Ozs//X19f///////v7+////////////9vb2/+vr6//v7+///v7+///////09PT/6+vr//Dw8P////////////Pz8//r6+v/8vLy////////////8vLy/+vr6//z8/P////////////x8fH/6+vr//T09P///////v7+//Dw8P/r6+v/9fX1////////////9vb2//b29v/39/f/9/f3//f39//29vb/9vb2//f39//39/f/9/f3//b29v/29vb/9/f3//f39//39/f/9vb2//b29v/39/f/9/f3//f39//29vb/9vb2//f39//39/f/9/f3//b29v/29vb/9/f3//f39//39/f/9vb2//b29v/s7Oz/6+vr//b29v///////Pz8/+3t7f/r6+v/+Pj4///////7+/v/7Ozs/+vr6//5+fn///////r6+v/r6+v/7Ozs//r6+v//////+fn5/+vr6//s7Oz/+/v7///////4+Pj/6+vr/+3t7f/9/f3///////b29v/r6+v/7Ozs//Dw8P/v7+//9/f3//7+/v/7+/v/8PDw/+/v7//4+Pj//v7+//v7+//w8PD/7+/v//n5+f/+/v7/+vr6//Dw8P/w8PD/+fn5//7+/v/5+fn/7+/v//Dw8P/6+vr//v7+//j4+P/v7+//8fHx//v7+//+/v7/9/f3/+/v7//w8PD//v7+///////29vb/7e3t//Hx8f/9/f3///////X19f/t7e3/8vLy//7+/v//////9PT0/+3t7f/z8/P//v7+//7+/v/z8/P/7e3t//T09P///////v7+//Ly8v/t7e3/9fX1///////9/f3/8fHx/+3t7v/29vb///////7+/v////7///////b19f/r6+r/7+/u//7+/v//////9PT0/+vr6v/w8PD////////////z8/P/6+vr//Hx8P////////////Ly8f/r6+r/8/Pz////////////8PDv/+vq6v/09PT///////7+/v/w7+//6+vr//X19f////////////X2+P/09PL/9/f4//n7/f/5+/3/9fb4//X2+v/39/j/+vr7//j4+P/19ff/9ff8//f39//5+fn/+Pr///X2+//09fX/+Pn7//n6+v/39/f/9ff8//X19//4+vz/+vv9//f4+//19fj/9ff9//j5+//5+vz/9vTu//Tz7v/19ff/7Ojd/+zu9P/19O7//vjl//jx2f/t6d7/6eLR//f39f/++en/+vnz/+3q4//r4cj/+fn5///////37dP/6+PP/+zs7P/59ez///74//n5+P/r4cb/7evm//jy3v/+9+P/9vHj/+rm3P/r4cX/+/fs////+//18uj/6dSe/+3u8P/t15f/7tmh//HZmv/03qP/9/Pp/+/drv/v37f/9unF//PZkv/047b/7dab/+rXo//39e//+vXk//HZmv/w4Lf/7dqo//Lep//368j/9ee//+rSk//s3rb/8t2k//n26//x367/7t2w/+/cq//y3KD/9+e8//f5/P/sy3X/8OnU//juz//z0nn/8ubG/+vYpf/u59D/9dqU//nsyP/v26T/7N67//Dgtf/03qL/8tiR//Ds4P/s5dP/8eCz//r25v/13Jj/7960/+vUmv/u3bD/8diT//birv/v3Kn/6+LK//HWkv/46sP/9OGq/+7cqf/r1Zv/8OCy//jpvf/36b///v35//ffoP/18+//6+nl/+7p2f/47Mf//fXg//Dq1//s7e//8fDu///89f//+u//8/T3/+vn3f/u1pj/9+a1//v14f/u6Nj/6+fd//Lu5f//+ev///78//Ds4//q5NX/8uO8///9+P/89uX/7+/u/+vo4f/07+L////+//789v/z9PT/8/b6//f39v/6+/z/+fr9//T2+//z9PX/9/f2//r6+v/4+fn/9PT0//Tz9P/39vP/+vr4//j49v/z9Pb/8/T4//j6/P/8////+f3///T5///z9/7/9/n9//n7/P/4+v3/9PT0//X2+f/5+fn/+vv9//f4+//z8/L/9PT1/+zs7P/r6un/9vb2///////8/P3/7ezr/+vr6v/4+Pj///////v7+//s7vL/7PD7//n7/v//////+vv9/+vt7//s6eH/+O/W//zrvf/125f/7Mht/+zBT//wuin//e7J//j7///q6uj/7e3s//39/P//////9vb2/+vr6//s7Oz/8vLy//Hx8f/39/f//Pz8//r6+v/y8vL/8fHx//f39//8/Pv/+vr9//Do1f/t2aX/9NiP//XRc//xvzz/7tGC/+/KaP/uqQD/7qoC/+6oAP/vqQD/76oC/+6nAP/457z/+Pz///Hw7v/y8vL/+vr6//z8/P/39/f/8fHx//Ly8v////////////b29v/s7Oz/8PDw//7+/v//////9fX1/+zr6P/y9///9dBv/+6kAP/uqQT/7qgE/+2jAP/1zWj/9Mth/+6nAP/vrwX/764E/++uBP/vrwX/8KwA/+3csv/0+P/////+//7+/v/w8PD/7Ozs//b29v//////////////////////9vb2/+vr6//v7+///v7+///////09PT/6+rn//H2///10W//7qgA/++vCP/vrwj/7qgA//XPa//0zGT/7qcA/++uBP/vrQH/760B/++tA//wqwD/7dyx//T3//////7//v7+//Dw8P/r6+v/9fX1////////////8vLy//Hx8f/39/f//Pz8//r6+v/y8vL/8fHx//f39//8+/j/+v7///DLaf/vpwD/760E/++tA//vpwD/78lj//DHXf/vpwD/760D/++sAP/vrAD/760C/++pAP/457z/+Pz///Hw7v/y8vL/+vr6//z8/P/39/f/8fHx//Ly8v/s7Oz/6+vr//b29v///////Pz8/+3t7f/r6+v/+Pj4/////f/7////7clr/+6rAP/vsQ//77EO/++rAP/tyGj/7Mdk//CtAP/wsxT/77IQ/+6xD//usRD/764H//ztxf/5/P//6uro/+3t7f/9/f3///////b29v/r6+v/7Ozs//T09P/09PT/9vb2//r6+v/4+Pj/9PT0//T09P/39/f/+vn4//j6///v3rD/7c15//LXj//225P/89WI/+/ftv/v4Lj/89uZ//fhqP/03aP/7die/+7ao//036j/+PPm//f4+//08/P/9PT0//j4+P/6+vr/9/f3//T09P/09PT////////////29vb/6+vr/+/v7//+/v7///////T09P/r6uf/8fb///XQcP/upwD/764F/++uBv/upwD/9c5r//XMY//upwD/7q4F/+6tAv/vrgP/768G/++sAP/s3LL/9Pf//////v/+/v7/8PDw/+vr6//19fX///////////////////////b29v/s7Oz/8PDw//7+/v//////9fX1/+zr6P/y9///9dBv/+6nAP/vrgT/764E/+6nAP/1zmn/9cxj/+6nAP/vrgP/760A/++tAP/vrQL/8KsA/+7csv/0+P/////+//7+/v/w8PD/7Ozs//b29v////////////Hx8f/w8PD/9/f3//39/f/7+/v/8fHx//Dw8P/4+Pj//fz5//r////wymj/76kA/++vB//vrwf/76kA/+/JZv/vx17/76gA/++uBP/vrQD/760A/++uAv/vqgD/+ei+//j8///w7+3/8vLy//r6+v/9/f3/9/f3//Dw8P/x8fH/7Ozs/+vr6//29vb///////z8/P/t7e3/6+vr//j4+P////3/+////+zHaP/upQD/76oE/++pA//vpAD/7cRg/+7EWv/vpwD/764E/++uA//vrgT/768G/+6rAP/87ML/+fz//+rq6P/t7e3//f39///////29vb/6+vr/+zs7P/19fX/9fX1//b29v/4+Pj/+Pj4//X19f/19fX/9/f3//j4+P/3+Pr/9O/h//Pku//y257/7899/+/CS//y14//8c1u/+6rAP/vrAL/76kA/+6nAP/uqAL/76cA//bkuf/3+///9fTy//X19f/4+Pj/+Pj4//f39//19fX/9fX1////////////9vb2/+vr6//v7+///v7+///////09PT/6+vr//Dw8P////////////T2///s8f//8vX9/////////vr/8erY/+zeuf/x2p7/9taC//PKXv/vujD/7N25//T3/v////7//v7+//Dw8P/r6+v/9fX1/////////////v7+///////29vb/7u7u//Hx8f/9/f3///////X19f/t7e3/8vLy//7+/f////z/8/Lw/+zr6f/y8u/////+///////z9Pj/7fD5//T2/v////////////Hz9v/t7e3/9fX1///////9/f3/8fHx/+3t7f/29vb///////7+/v/w8PD/7+/v//f39//+/v7/+/v7//Dw8P/v7+//+Pj4//7+/v/7+/v/8PDw/+/v7//5+fn//v7+//r6+v/w8PD/8PDv//r5+P/+/fz/+fj1/+/u6//w7+3/+vr5//7+///4+Pj/7+/v//Hx8f/7+/v//v7+//f39//v7+//8PDw/+zs7P/r6+v/9vb2///////8/Pz/7e3t/+vr6//4+Pj///////v7+//s7Oz/6+vr//n5+f//////+vr6/+vr6//s7Oz/+vr6///////5+fn/6+vr/+zs7P/8/Pv///////j4+P/r6+v/7e3t//39/f//////9vb2/+vr6//s7Oz/9vb2//b29v/39/f/9/f3//f39//29vb/9vb2//f39//39/f/9/f3//b29v/29vb/9/f3//f39//39/f/9vb2//b29v/39/f/9/f3//f39//29vb/9vb2//f39//39/f/9/f3//b29v/29vb/9/f3//f39//39/f/9vb2//b29v////////////b29v/r6+v/7+/v//7+/v//////9PT0/+vr6//w8PD////////////z8/P/6+vr//Ly8v////////////Ly8v/r6+v/8/Pz////////////8fHx/+vr6//09PT///////7+/v/w8PD/6+vr//X19f//////////////////////9vb2/+zs7P/w8PD//v7+///////19fX/7Ozs//Hx8f////////////T09P/s7Oz/8vLy////////////8vLy/+zs7P/z8/P////////////x8fH/7Ozs//X19f///////v7+//Dw8P/s7Oz/9vb2////////////AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=')));
}
}