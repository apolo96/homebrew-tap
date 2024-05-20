# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gitfresh < Formula
  desc "A DX Tool to keep the git repositories updated"
  homepage "https://github.com/apolo96/xwdgrap"
  version "1.0.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/apolo96/gitfresh/releases/download/v1.0.0/gitfresh_Darwin_x86_64.tar.gz"
      sha256 "ffb4c97dacf48f589cd6eb4653b9ef49bc7b74461d81dc3447a339c0f40ad0d0"

      def install
        bin.install "gitfresh"
        bin.install "gitfreshd"
      end
    end
    on_arm do
      url "https://github.com/apolo96/gitfresh/releases/download/v1.0.0/gitfresh_Darwin_arm64.tar.gz"
      sha256 "1ae5fb9caec24f988b09e21463282c79be8a600c6882464069b44051156a002f"

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
        sha256 "1d9f9567a8f34e6f33e69afd364ed04aeee36a0f246110c4f840c51cee4b75ea"

        def install
          bin.install "gitfresh"
          bin.install "gitfreshd"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/apolo96/gitfresh/releases/download/v1.0.0/gitfresh_Linux_armv7.tar.gz"
        sha256 "120944d556ff16d32b7541403827411db31ac56fb6c9f810ce199b64c90df1d8"

        def install
          bin.install "gitfresh"
          bin.install "gitfreshd"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/apolo96/gitfresh/releases/download/v1.0.0/gitfresh_Linux_arm64.tar.gz"
        sha256 "255f62a2a43d43ba2966c069b0bdbc559c27760f34fd4d9d499c6fb69793bd95"

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
