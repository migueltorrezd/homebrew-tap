cask "yappyapp" do
  version "0.3.0"
  sha256 "PLACEHOLDER_SHA256"

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

    To skip that prompt entirely, install with the no-quarantine flag:
      brew install --cask --no-quarantine matd97/tap/yappyapp
  EOS
end
