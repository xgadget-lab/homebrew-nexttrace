# !/bin/bash
release="$(curl -sL https://api.github.com/repos/xgadget-lab/nexttrace/releases/latest)"
version="$(jq -r ".name" <<< "$release")"
url="$(jq -r ".tarball_url" <<< "$release")"
sha256="$(curl -sL "$url" | sha256sum | cut -f1 -d' ')"
cat >Formula/nexttrace.rb <<EOF
class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://mtr.moe"
    version "${version}"
    url "${url}"
    sha256 "${sha256}"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/config.Version=${version}' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
EOF
