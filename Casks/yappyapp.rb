cask "yappyapp" do
  version "0.3.0"
  sha256 "fbd0c3089cdec862f3c27bd840a88962bec83d9092d4b76ced5e1c5e6cca54b1"

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
