class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://github.com/nxtrace/NTrace-V1"
    version "v1.3.1"
    url "https://github.com/nxtrace/NTrace-V1/archive/refs/tags/v1.3.1.tar.gz"
    sha256 "a882b6ebdebd8b92aaccbdda7527725c74a6247afa48dadfa9f74edcfc42d267"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/nxtrace/NTrace-core/config.Version=v1.3.1' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
