using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;

public class BlurMixerBehaviour : PlayableBehaviour
{
    public override void ProcessFrame(Playable playable, FrameData info, object playerData)
    {
        //�õ����ö���
        var trackBinding = playerData as PostEffects;
        float finalTimes = 0;

        //���Ϊ�գ�ֱ�ӷ���
        if (!trackBinding)return;

        //�õ���ǰ֡��clip����
        int inputCount = playable.GetInputCount();

        for (int i = 0; i < inputCount; i++)
        {
            //�õ��ں�Ȩ��
            float inputWeight = playable.GetInputWeight(i);

            //�õ���ǰclip
            ScriptPlayable<BlurBehaviour> inputScriptPlayable = (ScriptPlayable<BlurBehaviour>) playable.GetInput(i);
            //�õ�Behaviour
            BlurBehaviour input = inputScriptPlayable.GetBehaviour();
            //�ں�scale
            finalTimes += input.times * inputWeight;
        }

        trackBinding.times = (int)finalTimes;

    }
}
