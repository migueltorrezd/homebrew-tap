cask "yappyapp" do
  version "0.3.1"
  sha256 "5c994d9282a7644c12acdd16a51f71a77622d97d97e7c34fef1e5f4a0a91eaf2"

  url "https://github.com/matd97/yappyapp-releases/releases/download/v#{version}/YappYapp-#{version}.dmg"
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
