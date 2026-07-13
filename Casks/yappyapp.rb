cask "yappyapp" do
  version "0.3.1"
  sha256 "183902875c68b7c6fb629a68693600911392bb83bf4a28154260e3d84402ae9c"

  url "https://github.com/migueltorrezd/yappyapp-releases/releases/download/v#{version}/YappYapp-#{version}.dmg"
  name "YappYapp"
  desc "Local-only Mac dictation app with on-device Whisper and Parakeet transcription"
  homepage "https://yappyapp.app"

  depends_on macos: ">= :sonoma"

  auto_updates true

  app "YappYapp.app"

  caveats <<~EOS
    YappYapp is not notarized yet, so macOS Gatekeeper will block the first launch.

    To open it the first time:
      macOS 15 or newer: double-click YappYapp, then go to
        System Settings -> Privacy & Security and click "Open Anyway".
      macOS 14: right-click YappYapp in Applications and choose "Open".

    To skip that prompt entirely, run this after installing
    (recent Homebrew versions no longer offer a no-quarantine flag):
      xattr -dr com.apple.quarantine /Applications/YappYapp.app
  EOS
end
