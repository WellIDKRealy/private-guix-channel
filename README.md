# Add channel
~/.config/guix/channels.scm
```scm
(cons* (channel
		(name 'personal)
		(url "https://github.com/WellIDKRealy/private-guix-channel.git")
		(introduction
		 (make-channel-introduction
		  "ec2d307c02f2ee3eeca3b930322410c326ba9311"
		 (openpgp-fingerprint
		  "F350 03F0 86B3 29F4 4F3E 5EF5 8E5E D790 DCF6 5919"))))
	   %default-channels)
```
