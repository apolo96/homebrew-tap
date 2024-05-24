# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gitfresh < Formula
  desc "A DX Tool to keep the git repositories updated"
  homepage "https://github.com/apolo96/gitfresh"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/apolo96/gitfresh/releases/download/v1.0.0/gitfresh_Darwin_x86_64.tar.gz"
      sha256 "5af1d5f5d611602c4adfbe1080071a05452983cc0d36f0e1a0f8dd0400a5522f"

      def install
        bin.install "gitfresh"
        bin.install "gitfreshd"
      end
    end
    on_arm do
      url "https://github.com/apolo96/gitfresh/releases/download/v1.0.0/gitfresh_Darwin_arm64.tar.gz"
      sha256 "94c6b30b137cbb4faba521dc2436c0b80396b2f1cdf1bdbd8ffa6d03c25b3383"

      def install
        bin.install "gitfresh"
        bin.install "gitfreshd"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/apolo96/gitfresh/releases/download/v1.0.0/gitfresh_Linux_x86_64.tar.gz"
        sha256 "e12f121e5214165e4f797ed1cb3d05fd13f9a080d9c4c56b12ec81d06ec7d990"

        def install
          bin.install "gitfresh"
          bin.install "gitfreshd"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/apolo96/gitfresh/releases/download/v1.0.0/gitfresh_Linux_armv7.tar.gz"
        sha256 "ed509d34250c0642010051f91e030e6768a7dab2f74b93c4fa3e84776150ed24"

        def install
          bin.install "gitfresh"
          bin.install "gitfreshd"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/apolo96/gitfresh/releases/download/v1.0.0/gitfresh_Linux_arm64.tar.gz"
        sha256 "54ccf574a19725d2be0860b9b161d00e769c86c7f2e089c01165c2aecd467f39"

        def install
          bin.install "gitfresh"
          bin.install "gitfreshd"
        end
      end
    end
  end

  test do
    system "#{bin}/gitfresh version"
  end
end
