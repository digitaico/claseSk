'use strict';

// getUsermedia
const mediaStreamConstraints = {
	video: {
		width: {min: 1280},
		height: {min: 720},
	},
	audio : false,
};

const localVideo = document.getElementById('dVideo1');

let localStream;


function handleLocalMediaStreamError(error) {
	console.log('navigator.getUserMedia error: '. error);
}

navigator.mediaDevices.getUserMedia(mediaStreamConstraints)
	.then(gotLocalMediaStream).catch(handleLocalMediaStreamError);

// RTCPeerConnection

let localPeerConnection;

localPeerConnection = new RTCPeerConnection(servers);
localPeerConnection.addEventListener('icecandidate', handleConnection);
localPeerConnection.addEventListener('iceconnectionstatechange', handleConnectionChange);

navigator.mediaDevices.getUserMedia(mediaStreamConstraints).
	then(gotLocalMediaStream).
	catch(handleLocalMediaStreamError);


function gotLocalMediaStream(mediaStream) {
	localVideo.srcObject = mediaStream;
	localStream = mediaStream;
	trace('Receibio Local Stream');
	btnCall.disabled = false;
}

localPeerConnection.addStream(localStream);
trace('Agrego local stream a localPeerConnection');


function handleConnection(event) {
	const peerConnection = event.target;
	const iceCandidate = event.candidate;

	if(iceCandidate) {
		const newIceCandidate = new RTCIceCandidate(iceCandidate);
		const otherPeer = getOtherPeer(peerConnection);

		otherPeer.addIceCandidate(newIceCandidate)
			.then(() => {
				handleConnectionSuccess(peerConnection);
			}).catch((error) => {
				handleConnectionFailure(peerConnection, error);
			});

		trace(`${getPeerName(peerConnection)} ICE candidate: \n` + 
			`${event.candidate.candidate}.`);

	}
}

trace('localPeerConnection createOffer start.');
localPeerConnection.createOffer(offerOptions)
	.then(createdOffer).catch(setSessionDescriptionError);


function createdOffer(description) {
	trace(`Oferta de localPeerConnection:\n${description.sdp}`);

	trace('localPeerConnection setLocalDescription start.');
	localPeerConnection.setLocalDescription(description)
		.then(() => {
			setLocalDescriptionSuccess(localPeerConnection);
		}).catch(setSessionDescriptionError);

	trace('remotePeerConnection setRemoteDescription start.');
	remotePeerConnection.setRemoteDescription(description)
		.then(() => {
			setRemoteDescriptionSuccess(remotePeerConnection);
		}).catch(setSessionDescriptionError);

	trace('remotePeerConnection createAnswer start.');
	remotePeerConnection.createAnswer()
		.then(createdAnswer)
		.catch(setSessionDescriptionError);
}


function createdAnswer(description) {
	trace(`Answer from remotePeerConnection:\n${description.sdp}.`);

	trace('remotePeerConnection setLocalDescription start.');
	remotePeerConnection.setLocalDescription(description)
		.then(() => {
			setLocalDescriptionSuccess(remotePeerConnection);
		}).catch(setSessionDescriptionError);

	trace('localPeerConnection setRemoteDescription start.');
	localPeerConnection.setRemoteDescription(description)
		.then(() => {
			setRemoteDescriptionSuccess(localPeerConnection);
		}).catch(setSessionDescriptionError);
}







