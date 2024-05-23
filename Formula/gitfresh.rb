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
      sha256 "51577d7eacc320a4851235071fc943b1abb6bf64f36aa141e8dda2eade216008"

      def install
        bin.install "gitfresh"
        bin.install "gitfreshd"
      end
    end
    on_arm do
      url "https://github.com/apolo96/gitfresh/releases/download/v1.0.0/gitfresh_Darwin_arm64.tar.gz"
      sha256 "ff14136aea0cdc561b2ddb8f278f54b3e78c41b37c8c219f6b421aa002d892bc"

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
        sha256 "c19efa66267858f77f4ad63780255b342a3892d2a8d7d554f9a059adc793f5d0"

        def install
          bin.install "gitfresh"
          bin.install "gitfreshd"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/apolo96/gitfresh/releases/download/v1.0.0/gitfresh_Linux_armv7.tar.gz"
        sha256 "bf936d53631a2364fe33de57e42f4ebafe8f094a4b53223b3f83de4601e60a4f"

        def install
          bin.install "gitfresh"
          bin.install "gitfreshd"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/apolo96/gitfresh/releases/download/v1.0.0/gitfresh_Linux_arm64.tar.gz"
        sha256 "41e2ce3e7b48970405d04b2dec08a2debcb5f005d883185b39259d24ed102ce9"

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
