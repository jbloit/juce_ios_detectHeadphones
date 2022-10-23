/*
  ==============================================================================

    Headphones.cpp
    Created: 1 Oct 2021 7:51:47pm
    Author:  Julien Bloit

  ==============================================================================
*/

#include "Headphones.h"
#include <AVFAudio/AVAudioSession.h>

bool Headphones::isHeadsetPluggedIn() {
AVAudioSessionRouteDescription* route = [[AVAudioSession sharedInstance] currentRoute];
for (AVAudioSessionPortDescription* desc in [route outputs]) {
    if ([[desc portType] isEqualToString:AVAudioSessionPortBuiltInSpeaker])
        return NO;
}
return YES;
    
}
