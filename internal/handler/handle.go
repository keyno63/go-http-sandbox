package handler

import (
	"fmt"
	"net/http"
)

type Handler struct {
}

func (h Handler) ServeHTTP(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "application/json")
	_, err := w.Write([]byte(`{"body":"Hello World!"}`))
	if err != nil {
		_ = fmt.Errorf("%s", err.Error())
	}
}
