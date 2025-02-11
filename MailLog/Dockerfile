FROM perl:5.34

WORKDIR /app

COPY cpanfile .

RUN cpanm -n --with-develop --installdeps .

COPY . .

EXPOSE 3000

CMD ["morbo", "./MailLog"]
