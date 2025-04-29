<!-- views/admin/events.php -->
<div class="admin-events">
    <h1 class="mb-4">Gestion des événements</h1>

    <div class="row mb-4">
        <div class="col">
            <div class="card shadow">
                <div class="card-header bg-success text-white">
                    <div class="d-flex justify-content-between align-items-center">
                        <h5 class="mb-0">Liste des événements</h5>
                        <a href="<?php echo $this->url('events/create'); ?>" class="btn btn-light btn-sm">
                            <i class="fas fa-plus"></i> Ajouter un événement
                        </a>
                    </div>
                </div>
                <div class="card-body">
                    <!-- Filters -->
                    <div class="filters mb-4">
                        <form action="<?php echo $this->url('admin/events'); ?>" method="get" class="row g-3">
                            <div class="col-md-3">
                                <label for="type" class="form-label">Type</label>
                                <select name="type" id="type" class="form-select">
                                    <option value="">Tous les types</option>
                                    <option value="Seminaire" <?php echo isset($_GET['type']) && $_GET['type'] === 'Seminaire' ? 'selected' : ''; ?>>Séminaire</option>
                                    <option value="Conference" <?php echo isset($_GET['type']) && $_GET['type'] === 'Conference' ? 'selected' : ''; ?>>Conférence</option>
                                    <option value="Workshop" <?php echo isset($_GET['type']) && $_GET['type'] === 'Workshop' ? 'selected' : ''; ?>>Workshop</option>
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label for="date_debut" class="form-label">Date de début</label>
                                <input type="date" name="date_debut" id="date_debut" class="form-control" value="<?php echo isset($_GET['date_debut']) ? $this->escape($_GET['date_debut']) : ''; ?>">
                            </div>
                            <div class="col-md-3">
                                <label for="date_fin" class="form-label">Date de fin</label>
                                <input type="date" name="date_fin" id="date_fin" class="form-control" value="<?php echo isset($_GET['date_fin']) ? $this->escape($_GET['date_fin']) : ''; ?>">
                            </div>
                            <div class="col-md-3">
                                <label for="search" class="form-label">Recherche</label>
                                <input type="text" name="search" id="search" class="form-control" value="<?php echo isset($_GET['search']) ? $this->escape($_GET['search']) : ''; ?>" placeholder="Titre, description ou lieu">
                            </div>
                            <div class="col-md-12 d-flex">
                                <button type="submit" class="btn btn-success">Filtrer</button>
                                <a href="<?php echo $this->url('admin/events'); ?>" class="btn btn-outline-secondary ms-2">Réinitialiser</a>
                            </div>
                        </form>
                    </div>

                    <!-- Events Table -->
                    <div class="table-responsive">
                        <table class="table table-striped table-hover">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>Titre</th>
                                <th>Type</th>
                                <th>Date</th>
                                <th>Lieu</th>
                                <th>Créateur</th>
                                <th>Actions</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php if (empty($events)): ?>
                                <tr>
                                    <td colspan="7" class="text-center">Aucun événement trouvé</td>
                                </tr>
                            <?php else: ?>
                                <?php foreach ($events as $event): ?>
    <tr>
        <td><?php echo $this->escape($event['titre']); ?></td>
        <td>
            <?php
            // Safely get the event type
            $eventType = $event['type'] ?? 'Non spécifié';
            echo $this->escape($eventType);
            ?>
        </td>
        <td>
            <?php
            // Safely get the event date
            $eventDate = null;
            
            // Check different possible date sources
            if (isset($event['eventDate'])) {
                $eventDate = $event['eventDate'];
            } elseif (isset($event['dateDebut'])) {
                $eventDate = $event['dateDebut'];
            } elseif (isset($event['date'])) {
                $eventDate = $event['date'];
            } elseif (isset($event['dateCreation'])) {
                $eventDate = $event['dateCreation'];
            }
            
            // Format and escape the date
            echo $eventDate ? $this->formatDate($eventDate, 'd/m/Y') : '<span class="text-muted">Date non disponible</span>';
            ?>
        </td>
        <td><?php echo $this->escape($event['lieu'] ?? 'Non spécifié'); ?></td>
        <td>
            <?php
            // Safely get creator name
            $creatorName = ($event['createurPrenom'] ?? '') . ' ' . ($event['createurNom'] ?? '');
            echo $this->escape(trim($creatorName) ?: 'Créateur inconnu');
            ?>
        </td>
        <td class="text-center">
            <div class="btn-group btn-group-sm" role="group">
                <a href="<?php echo $this->url('events/' . $event['id']); ?>" class="btn btn-info" title="Voir">
                    <i class="fas fa-eye"></i>
                </a>
                <?php if ($auth->hasPermission('edit_events')): ?>
                    <a href="<?php echo $this->url('events/edit/' . $event['id']); ?>" class="btn btn-warning" title="Modifier">
                        <i class="fas fa-edit"></i>
                    </a>
                <?php endif; ?>
            </div>
        </td>
    </tr>
<?php endforeach; ?>
                            <?php endif; ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Calendar View -->
    <div class="row">
        <div class="col">
            <div class="card shadow">
                <div class="card-header bg-success text-white">
                    <h5 class="mb-0">Calendrier des événements</h5>
                </div>
                <div class="card-body">
                    <div id="calendar"></div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Calendar Scripts -->
<script>
    document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');

        var calendar = new FullCalendar.Calendar(calendarEl, {
            initialView: 'dayGridMonth',
            headerToolbar: {
                left: 'prev,next today',
                center: 'title',
                right: 'dayGridMonth,timeGridWeek,timeGridDay,listMonth'
            },
            locale: 'fr',
            events: '<?php echo $this->url('events/json'); ?>',
            eventClick: function(info) {
                window.location.href = info.event.url;
            },
            eventColor: '#28a745',
            loading: function(isLoading) {
                // You can add a loading indicator here
            }
        });

        calendar.render();
    });
</script>