(list
 (channel
        (name 'guix)
        (url "https://git.savannah.gnu.org/git/guix.git")
        (branch "master")
        (commit
          "5283d24062be62f59ff9f14fa7095ebcfcb7a9a4")
        (introduction
          (make-channel-introduction
            "9edb3f66fd807b096b48283debdcddccfea34bad"
            (openpgp-fingerprint
              "BBB0 2DDF 2CEA F6A8 0D1D  E643 A2A0 6DF2 A33A 54FA"))))
 (channel
  (name 'personal)
  ;; (url "https://github.com/WellIDKRealy/private-guix-channel.git")
  (url (dirname current-filename))
  (introduction
   (make-channel-introduction
    "ec2d307c02f2ee3eeca3b930322410c326ba9311"
    (openpgp-fingerprint
     "F350 03F0 86B3 29F4 4F3E 5EF5 8E5E D790 DCF6 5919")))))
