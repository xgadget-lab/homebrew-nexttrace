class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://github.com/nxtrace/NTrace-V1"
    version "v1.3.0"
    url "https://github.com/nxtrace/NTrace-V1/archive/refs/tags/v1.3.0.tar.gz"
    sha256 "cda006d04031d25698eccdd31dbbe04fd03fc0a8aa24c0f9fb1dc76a13097cb5"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/nxtrace/NTrace-core/config.Version=v1.3.0' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
