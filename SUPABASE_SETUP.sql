-- Gestionale Turni PRO - tabella privata per sincronizzazione cloud
create table if not exists public.turni_cloud_data (
  user_id uuid primary key references auth.users(id) on delete cascade,
  payload jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);

alter table public.turni_cloud_data enable row level security;

-- Ogni utente può leggere, inserire e aggiornare esclusivamente la propria riga.
drop policy if exists "Leggi i propri turni" on public.turni_cloud_data;
create policy "Leggi i propri turni"
  on public.turni_cloud_data for select
  to authenticated
  using (auth.uid() = user_id);

drop policy if exists "Inserisci i propri turni" on public.turni_cloud_data;
create policy "Inserisci i propri turni"
  on public.turni_cloud_data for insert
  to authenticated
  with check (auth.uid() = user_id);

drop policy if exists "Aggiorna i propri turni" on public.turni_cloud_data;
create policy "Aggiorna i propri turni"
  on public.turni_cloud_data for update
  to authenticated
  using (auth.uid() = user_id)
  with check (auth.uid() = user_id);
