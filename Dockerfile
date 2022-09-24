ARG image
ARG version
FROM $image:$version

# Update package cache and install prerequisites
RUN apt update && apt install -y --no-install-recommends sudo python3 locales
RUN apt clean && apt autoremove

# Generate locale
RUN locale-gen en_US.UTF-8

# Add non-root user
RUN useradd ansible;
RUN usermod -aG sudo ansible
RUN echo ansible:ansible | chpasswd

VOLUME ["/sys/fs/cgroup", "/tmp", "/run"]
CMD ["/lib/systemd/systemd"]